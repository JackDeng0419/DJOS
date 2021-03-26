#define  COL8_000000  0
#define  COL8_FF0000  1
#define  COL8_00FF00  2
#define  COL8_FFFF00  3
#define  COL8_0000FF  4
#define  COL8_FF00FF  5
#define  COL8_00FFFF  6
#define  COL8_FFFFFF  7
#define  COL8_C6C6C6  8
#define  COL8_840000  9
#define  COL8_008400  10
#define  COL8_848400  11
#define  COL8_000084  12
#define  COL8_840084  13
#define  COL8_008484  14
#define  COL8_848484  15

#define  PORT_KEYDAT  0x0060
#define  PIC_OCW2     0x20
#define  PIC1_OCW2    0xA0

//[Basic initialization]==========================================================
struct BOOTINFO{
    char * vgaRam;
    short screenX, screenY;
};
void initBootInfo(struct BOOTINFO *pBootInfo);
static struct BOOTINFO bootInfo;

static int mx = 0, my = 0;
static int xsize = 0, ysize = 0;
//======================================================================================


//[Buffer]======================================================================================
struct FIFO8{
    unsigned char* buf;
    int p, q, size, free, flags;
    //p is the next read position
    //q is the next write position
};
static struct FIFO8 keyinfo;
static struct  FIFO8 mouseinfo;

static char keybuf[32];
static char  mousebuf[128];

void fifo8_init(struct FIFO8 *fifo, int size, unsigned char* buf); //init the size
int  fifo8_put(struct FIFO8 *fifo, unsigned char data); //write
int  fifo8_get(struct FIFO8 *fifo); //read
int  fifo8_status(struct FIFO8 *fifo); //check whether has contents

//======================================================================================


//[function to control hardwares]==========================================================
void io_hlt(void);
void io_cli(void);
void io_sti(void);
void io_stihlt(void);
void io_out8(int port, char data);
char io_in8(int port);
int  io_load_eflags(void);
void io_store_eflags(int eflags);
//======================================================================================


//[palette]======================================================================================
void init_palette(void);
void set_palette(int start, int end, unsigned char *rgb);
void boxfill8(unsigned char *vram,int xsize,  unsigned char c, int x, int y,
int x0, int y0);
//======================================================================================


//[system font]=====================================================================================
extern char systemFont[16];
void showFont8(char *vram, int xsize, int x, int y, char c, char* font);
void showString(char* vram, int xsize, int x, int y, char color, unsigned char *s);
//================================================================================================


//[Cursor]=====================================================================================
void init_mouse_cursor(char* mouse, char bc);
void putblock(char* vram, int vxsize, int pxsize, int pysize, int px0, int py0, char* buf, int bxsize);
static char mcursor[228];
void  show_mouse_info();

struct MOUSE_DEC {
    unsigned char buf[3], phase; //phase: what number data it is
    int x, y, btn;
};

static struct MOUSE_DEC mdec;

int   mouse_decode(struct MOUSE_DEC *mdec, unsigned char dat);
void computeMousePosition(struct MOUSE_DEC* mdec);
void eraseMouse(char* vram);
void drawMouse(char* vram);
//================================================================================================


//[Interruption]=====================================================================================
void intHandlerFromC(char* esp);
void intHandlerForMouse(char* esp);
char charToHexVal(char c);
char* charToHexStr(unsigned char c);
void  init_keyboard(void);
void  enable_mouse(struct MOUSE_DEC* mdec);
static char keyval[5] = {'0', 'X', 0, 0, 0};

//================================================================================================

//[Memory Management]=====================================================================================
char*  intToHexStr(unsigned int d);
struct AddrRangeDesc{
    unsigned int baseAddrLow;
    unsigned int baseAddrHigh;
    unsigned int lengthLow;
    unsigned int lengthHigh;
    unsigned int type;
};

int get_memory_block_count();
char* get_adr_buffer();
void showMemoryInfo(struct AddrRangeDesc * desc, char * vram, int page, int xsize, int color);

//===================================================================================================

void CMain(void){
    
    initBootInfo(&bootInfo);
    char*vram = bootInfo.vgaRam;
    xsize = bootInfo.screenX, ysize = bootInfo.screenY;
    int data = 0;
    
    fifo8_init(&keyinfo, 32, keybuf);
    fifo8_init(&mouseinfo, 128, mousebuf);

    init_palette();
    init_keyboard();

    //[draw the desktop]****************************************************************************************************************
    boxfill8(vram, xsize, COL8_008484, 0, 0, xsize-1, ysize-29);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize-28, xsize-1, ysize-28);
    boxfill8(vram, xsize, COL8_FFFFFF, 0, ysize-27, xsize-1, ysize-27);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize-26, xsize-1, ysize-1);

    boxfill8(vram, xsize, COL8_FFFFFF, 3, ysize-24, 59, ysize-24);
    boxfill8(vram, xsize, COL8_FFFFFF, 2, ysize-24, 2, ysize-4);
    boxfill8(vram, xsize, COL8_848484, 3, ysize-4,  59, ysize-4);
    boxfill8(vram, xsize, COL8_848484, 59, ysize-23, 59, ysize-5);
    boxfill8(vram, xsize, COL8_000000, 2, ysize-3, 59, ysize-3);
    boxfill8(vram, xsize, COL8_000000, 60, ysize-24, 60, ysize-3);

    boxfill8(vram, xsize, COL8_848484, xsize-47, ysize-24, xsize-4, ysize-24);
    boxfill8(vram, xsize, COL8_848484, xsize-47, ysize-23, xsize-47, ysize-4);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize-47, ysize-3, xsize-4, ysize-3);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize-3,  ysize-24, xsize-3, ysize-3);
    //********************************************************************************************************************************************


    mx = (xsize - 12) / 2;
    my = (ysize - 28 - 19) / 2;  
    init_mouse_cursor(mcursor, COL8_008484);
    putblock(vram, xsize, 12, 19, mx, my, mcursor, 12);

    int memCnt = get_memory_block_count();
    char* pStr = intToHexStr(memCnt);
    struct AddrRangeDesc* memDesc = (struct AddrRangeDesc*)get_adr_buffer();
    int count = 0;

    io_sti();
    enable_mouse(&mdec);
    for(;;) {
       io_cli();
       if( fifo8_status(&keyinfo) + fifo8_status(&mouseinfo)== 0){
           io_stihlt();
       }
       else if(fifo8_status(&keyinfo) != 0){
           io_sti();
           data = fifo8_get(&keyinfo);

           if(data==0x1C){
               showMemoryInfo(memDesc+count, vram, count, xsize, COL8_FFFFFF);
               count = count+1;
               if(count>memCnt){
                   count= 0;
               }
           }
        //    char* pStr = charToHexStr(data);
        //    static int showPos = 0;
        //    showString(vram, xsize, showPos, 0, COL8_FFFFFF, pStr);
        //    showPos += 32;
       }
       else if(fifo8_status(&mouseinfo) != 0){
           show_mouse_info();
       }
    }
}
void initBootInfo(struct BOOTINFO *pBootInfo) {
    pBootInfo->vgaRam = (char*)0xa0000;
    pBootInfo->screenX = 320;
    pBootInfo->screenY = 200;
}

void showString(char* vram, int xsize, int x, int y, char color, unsigned char *s ) {
    for (; *s != 0x00; s++) {
       showFont8(vram, xsize, x, y,color, systemFont+ *s * 16);
       x += 8;
    }
}

void init_palette(void) {
    static  unsigned char table_rgb[16 *3] = {
        0x00,  0x00,  0x00,
        0xff,  0x00,  0x00,
        0x00,  0xff,  0x00,
        0xff,  0xff,  0x00,
        0x00,  0x00,  0xff,
        0xff,  0x00,  0xff,
        0x00,  0xff,  0xff,
        0xff,  0xff,  0xff,
        0xc6,  0xc6,  0xc6,
        0x84,  0x00,  0x00,
        0x00,  0x84,  0x00,
        0x84,  0x84,  0x00,
        0x00,  0x00,  0x84,
        0x84,  0x00,  0x84,
        0x00,  0x84,  0x84,
        0x84,  0x84,  0x84,
    };

    set_palette(0, 15, table_rgb);
    return;
}

void set_palette(int start,  int end,  unsigned char* rgb) {
    int i, eflags;
    eflags = io_load_eflags();
    io_cli();
    io_out8(0x03c8,  start);  //set  palette number
    for (i = start; i <=end; i++ ) {
        io_out8(0x03c9,  rgb[0] / 4);
        io_out8(0x03c9,  rgb[1] / 4);
        io_out8(0x03c9,  rgb[2] / 4);

        rgb += 3;
    }

    io_store_eflags(eflags);
    return;
}

void boxfill8(unsigned char* vram, int xsize, unsigned char c, 
int x0, int y0, int x1, int y1) {
    int  x, y;
    for (y = y0; y <= y1; y++)
     for (x = x0; x <= x1; x++) {
         vram[y * xsize + x] = c;
     }

}

void showFont8(char *vram, int xsize, int x, int y, char c, char* font){
    int i;
    char d;
    for(i=0;i<16;i++){
        d = font[i];
        if ((d & 0x80) != 0) {vram[(y+i)*xsize + x + 0] = c;}
        if ((d & 0x40) != 0) {vram[(y+i)*xsize + x + 1] = c;}
        if ((d & 0x20) != 0) {vram[(y+i)*xsize + x + 2] = c;} 
        if ((d & 0x10) != 0) {vram[(y+i)*xsize + x + 3] = c;}
        if ((d & 0x08) != 0) {vram[(y+i)*xsize + x + 4] = c;}
        if ((d & 0x04) != 0) {vram[(y+i)*xsize + x + 5] = c;}
        if ((d & 0x02) != 0) {vram[(y+i)*xsize + x + 6] = c;}
        if ((d & 0x01) != 0) {vram[(y+i)*xsize + x + 7] = c;}
    }
}

void init_mouse_cursor(char* mouse, char bc) {
    static char cursor[19][12] = {
        "*...........",
        "**..........",
        "*O*.........",
        "*OO*........",
        "*OOO*.......",
        "*OOOO*......",
        "*OOOOO*.....",
        "*OOOOOO*....",
        "*OOOOOOO*...",
        "*OOOOOOOO*..",
        "*OOOOOOOOO*.",
        "*OOOOOOOOOO*",
        "*OOOOOO*****",
        "*OOO*OO*....",
        "*OO*.*OO*...",
        "*O*..*OO*...",
        "**....*OO*..",
        "......*OO*..",
        ".......**..."
    };

      int x, y;
      for (y = 0; y < 19; y++) {
          for (x = 0; x < 12; x++) {
             if (cursor[y][x] == '*') {
                 mouse[y*12 + x] = COL8_000000;
             }
             if (cursor[y][x] == 'O') {
                mouse[y*12 + x] = COL8_FFFFFF;
             }
             if (cursor[y][x] == '.') {
                 mouse[y*12 + x] = bc;
             }
          }
      }
}

void putblock(char* vram, int vxsize, int pxsize,
int pysize, int px0, int py0, char* buf, int bxsize) {
    int x, y;
    for (y = 0; y < pysize; y++)
      for (x = 0; x < pxsize; x++) {
          vram[(py0+y) * vxsize + (px0+x)] = buf[y * bxsize + x];
      }
}

void intHandlerFromC(char* esp) {
    char*vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX, ysize = bootInfo.screenY;
    io_out8(PIC_OCW2, 0x21);
    unsigned char data = 0;
    data = io_in8(PORT_KEYDAT);
    fifo8_put(&keyinfo, data);
}

char charToHexVal(char c){
    if(c>=10){
        return 'A' + c - 10;
    }
    return '0' + c;
}

char* charToHexStr(unsigned char c){
    int i = 0;
    char mod = c% 16;
    keyval[3] = charToHexVal(mod);
    c = c/16;
    keyval[2] = charToHexVal(c);

    return keyval;
}


#define  PORT_KEYDAT  0x0060
#define  PORT_KEYSTA  0x0064
#define  PORT_KEYCMD  0x0064
#define  KEYSTA_SEND_NOTREADY  0x02
#define  KEYCMD_WRITE_MODE  0x60
#define  KBC_MODE     0x47

// wait until the mouse is accessible
void  wait_KBC_sendready() {
    for(;;) {
        if ((io_in8(PORT_KEYSTA) & KEYSTA_SEND_NOTREADY) == 0) {
            break;
        }
    }
}

// after the mouse is accessible, init it
void init_keyboard(void) {
    wait_KBC_sendready();
    io_out8(PORT_KEYCMD, KEYCMD_WRITE_MODE);//let the keyboard enter the receive mode
    wait_KBC_sendready();
    io_out8(PORT_KEYDAT, KBC_MODE);//connect the keyboard and mouse to 0x60
    return;
}

#define KEYCMD_SENDTO_MOUSE 0xd4
#define MOUSECMD_ENABLE 0xf4

void enable_mouse(struct MOUSE_DEC* mdec) {
    wait_KBC_sendready();
    io_out8(PORT_KEYCMD, KEYCMD_SENDTO_MOUSE);
    wait_KBC_sendready();
    io_out8(PORT_KEYDAT, MOUSECMD_ENABLE);
    //after this, the mouse will send an inturrption to the cpu
    mdec->phase = 0;
    return;
}

void intHandlerForMouse(char* esp) {
    unsigned char data;
    io_out8(PIC1_OCW2, 0x20);//after every int, we should active it again
    io_out8(PIC_OCW2, 0x20);
    
    data = io_in8(PORT_KEYDAT);
    fifo8_put(&mouseinfo, data);
}

void fifo8_init(struct FIFO8 *fifo, int size, unsigned char *buf) {
    fifo->size = size;
    fifo->buf = buf;
    fifo->free = size;
    fifo->flags = 0;
    fifo->p = 0;
    fifo->q = 0;
    return ;
}

#define FLAGS_OVERRUN 0x0001
int fifo8_put(struct FIFO8 *fifo, unsigned char data) {
    if (fifo->free ==0) {
        fifo->flags |= FLAGS_OVERRUN;
        return -1;
    }

    fifo->buf[fifo->p] = data;
    fifo->p++;
    if (fifo->p == fifo->size) {
        fifo->p = 0;
        //we don't use mod for a faster speed
    }

    fifo->free--;
    return 0;
}

int fifo8_get(struct FIFO8 *fifo) {
    int data;
    if (fifo->free == fifo->size) {
        return -1;
    }

    data = fifo->buf[fifo->q];
    fifo->q++;
    if (fifo->q == fifo->size) {
        fifo->q = 0;
    }

    fifo->free++;
    return data;
}

int fifo8_status(struct FIFO8 *fifo) {
    return fifo->size - fifo->free;
}

void computeMousePosition(struct MOUSE_DEC* mdec) {
    mx += mdec->x;
    my += mdec->y;
    if (mx < 0) {
       mx = 0;
    }

    if (my < 0) {
       my = 0;
    }

    if (mx > xsize - 12) {
       mx = xsize - 12;
    }
    if (my > ysize - 19) {
       my = ysize - 19;
    }

}

void eraseMouse(char* vram) {
    boxfill8(vram, xsize, COL8_008484, mx, my, mx+11, my+18);
}

void drawMouse(char* vram){
    putblock(vram, xsize, 12, 19, mx, my, mcursor, 12);
}

void  show_mouse_info() {
    char* vram = bootInfo.vgaRam;
    unsigned char data = 0;
    io_sti();
    data = fifo8_get(&mouseinfo);
    if (mouse_decode(&mdec, data)!=0){
        eraseMouse(vram);
        computeMousePosition(&mdec);
        drawMouse(vram);
    }
}

int mouse_decode(struct MOUSE_DEC *mdec, unsigned char dat){
    if(mdec->phase == 0){
        if (dat == 0xfa){
            //when receiving 0xfa, system starts to collect data.
            mdec->phase = 1;
        }
        return 0;
    }
    if(mdec->phase == 1){
        if((dat & 0xc8) == 0x08){
            mdec->buf[0] = dat;
            mdec->phase = 2;
        }
        return 0;
    }
    if (mdec->phase == 2) {
        mdec->buf[1] = dat;
        mdec->phase = 3;
        return 0;
    }
    if(mdec->phase == 3){

        mdec->buf[2] = dat;
        mdec->phase = 1;
        mdec->btn = mdec->buf[0] &0x07; // the low 3-bit of the first byte
        mdec->x = mdec->buf[1];
        mdec->y = mdec->buf[2];

        //hardware rules
        if ((mdec->buf[0] & 0x10) != 0) {
           mdec->x |= 0xffffff00;
        }

        if ((mdec->buf[0] & 0x20) != 0) {
           mdec->y |= 0xffffff00;
        }

        mdec->y = -mdec->y;
        return 1;
    }

    return -1;
}

char*  intToHexStr(unsigned int d) {
    static char str[11];
    str[0] = '0';
    str[1] = 'X';
    str[10] = 0;

    int i = 2;
    for(; i < 10; i++) {
        str[i] = '0';
    }

    int p = 9;
    while (p > 1 && d > 0) {
        int e = d % 16;
        d /= 16;
        if (e >= 10) {
           str[p] = 'A' + e - 10;
        } else {
            str[p] = '0' + e;
        }         
    } 

    return str;
}


void  showMemoryInfo(struct AddrRangeDesc* desc, char* vram, int page,int xsize, int color) {
    int x = 0, y = 0, gap = 13*8,  strLen = 10* 8;

    boxfill8(vram, xsize, COL8_008484, 0, 0,  xsize, 100);

    showString(vram, xsize, x, y, color, "page is: ");
    char* pPageCnt = intToHexStr(page);
    showString(vram, xsize, gap, y, color, pPageCnt);
    y += 16;

    showString(vram, xsize, x, y, color, "BaseAddrL: ");
    char* pBaseAddrL = intToHexStr(desc->baseAddrLow);
    showString(vram, xsize, gap, y, color, pBaseAddrL);
    y += 16;

    showString(vram, xsize, x, y, color, "BaseAddrH: ");
    char* pBaseAddrH = intToHexStr(desc->baseAddrHigh);
    showString(vram, xsize, gap, y, color, pBaseAddrH);
  
    y += 16;
    showString(vram, xsize, x, y, color, "lengthLow: ");
    char* pLengthLow = intToHexStr(desc->lengthLow);
    showString(vram, xsize, gap, y, color, pLengthLow);

    y+= 16;
    showString(vram, xsize, x, y, color, "lengthHigh: ");
    char* pLengthHigh = intToHexStr(desc->lengthHigh);
    showString(vram, xsize, gap, y, color, pLengthHigh);

    y+= 16;
    showString(vram, xsize, x, y, color, "type: ");
    char* pType = intToHexStr(desc->type);
    showString(vram, xsize, gap, y, color, pType);
}