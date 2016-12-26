#define _DISP1_C_
#include "reg51.h"
#include "stdio.h"
#include "math.h"
#include "ctype.h"
#include "string.h"
#include "stdlib.h"
#include "absacc.h"
#include "intrins.h"

#define Disp_On  0x3f
#define Disp_Off 0x3e
#define Col_Add 0x40
#define Page_Add 0xb8
#define Start_Line 0xc0

#define  CB000  0x0000  /* 0  */
#define  CB001  CB000+16  /* 1  */
#define  CB002  CB001+16  /* 2  */
#define  CB003  CB002+16  /* 3  */
#define  CB004  CB003+16  /* 4 */
#define  CB005  CB004+16  /* 5  */
#define  CB006  CB005+16	/* 6  */
#define  CB007  CB006+16	/* 7  */
#define  CB008  CB007+16	/* 8  */
#define  CB009  CB008+16	/* 9  */
#define  CB010  CB009+16	/* a  */
#define  CB011  CB010+16	/* b  */
#define  CB012  CB011+16	/* c  */
#define  CB013  CB012+16	/* d  */
#define  CB014  CB013+16	/* e  */
#define  CB015  CB014+16	/* f  */
#define  CB016  CB015+16	/*    */

#define  CB01  0x0000	/* ��  */
#define  CB02  CB01+32	/* ��  */
#define  CB03  CB02+32	/* ��  */
#define  CB04  CB03+32	/* ��  */
#define  CB05  CB04+32	/* ��  */



sbit CS1=P2^4;   //Ƭѡ�����Ļ
sbit CS2=P2^3;   //Ƭѡ�Ұ���Ļ
sbit RS=P2^2;   //����/ָ�����
sbit RW=P2^1;   //��д����
sbit E=P2^0;     //ʹ�ܿ���
sbit RST=P2^6;


unsigned char low1  = 0x00;		//low bits in hex
unsigned char high1 = 0x00;		//high bits in hex
unsigned char low2  = 0x00;		//low bits in hex
unsigned char high2 = 0x00;		
unsigned char low3  = 0x00;		//low bits in hex//low bits in hex
unsigned char high3 = 0x00;		//high bits in hex
unsigned char low4  = 0x00;		//low bits in hex//low bits in hex
unsigned char high4 = 0x00;		//high bits in hex
unsigned char pag = 6;			// page coordinate
unsigned char col = 0;			// column coordinate
unsigned int in=0;				//numbers of in bytes
unsigned int out=0;				//numbers of out bytes
unsigned char flag=0x00;


	
sbit P1_0=P1^0;
sbit P1_1=P1^1;
sbit P1_2=P1^2;
sbit P1_3=P1^3;


unsigned char code SZ_ZM[ ]={

/*--  ����:  0  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x0F,0x10,0x20,0x20,0x10,0x0F,0x00,

/*--  ����:  1  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x10,0x10,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,

/*--  ����:  2  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x70,0x08,0x08,0x08,0x88,0x70,0x00,0x00,0x30,0x28,0x24,0x22,0x21,0x30,0x00,

/*--  ����:  3  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x30,0x08,0x88,0x88,0x48,0x30,0x00,0x00,0x18,0x20,0x20,0x20,0x11,0x0E,0x00,

/*--  ����:  4  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x00,0xC0,0x20,0x10,0xF8,0x00,0x00,0x00,0x07,0x04,0x24,0x24,0x3F,0x24,0x00,

/*--  ����:  5  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0xF8,0x08,0x88,0x88,0x08,0x08,0x00,0x00,0x19,0x21,0x20,0x20,0x11,0x0E,0x00,

/*--  ����:  6  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0xE0,0x10,0x88,0x88,0x18,0x00,0x00,0x00,0x0F,0x11,0x20,0x20,0x11,0x0E,0x00,

/*--  ����:  7  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x38,0x08,0x08,0xC8,0x38,0x08,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,

/*--  ����:  8  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x70,0xC8,0x08,0x08,0x88,0x70,0x00,0x00,0x1C,0x22,0x21,0x21,0x22,0x1C,0x00,

/*--  ����:  9  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x00,0x31,0x22,0x22,0x11,0x0F,0x00,

/*--  ����:  a  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x19,0x24,0x22,0x22,0x22,0x3F,0x20,

/*--  ����:  b  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x08,0xF8,0x00,0x80,0x80,0x00,0x00,0x00,0x00,0x3F,0x11,0x20,0x20,0x11,0x0E,0x00,

/*--  ����:  c  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x00,0x00,0x80,0x80,0x80,0x00,0x00,0x00,0x0E,0x11,0x20,0x20,0x20,0x11,0x00,

/*--  ����:  d  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x00,0x00,0x80,0x80,0x88,0xF8,0x00,0x00,0x0E,0x11,0x20,0x20,0x10,0x3F,0x20,

/*--  ����:  e  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x22,0x22,0x22,0x22,0x13,0x00,

/*--  ����:  f  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x80,0x80,0xF0,0x88,0x88,0x88,0x18,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,


/*--  ����:     --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=8x16   --*/
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
};   

unsigned char code HZ_ZM[]=
{
	/*--  ����:  ��  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=16x16   --*/
0x10,0x60,0x02,0x0C,0xC0,0x00,0xF8,0x88,0x88,0x88,0xFF,0x88,0x88,0xA8,0x18,0x00,
0x04,0x04,0x7C,0x03,0x80,0x60,0x1F,0x80,0x43,0x2C,0x10,0x28,0x46,0x81,0x80,0x00,

/*--  ����:  ��  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=16x16   --*/
0x40,0x3C,0x10,0xFF,0x10,0x10,0x40,0x48,0x48,0x48,0x7F,0x48,0xC8,0x48,0x40,0x00,
0x02,0x06,0x02,0xFF,0x01,0x01,0x00,0x02,0x0A,0x12,0x42,0x82,0x7F,0x02,0x02,0x00,

/*--  ����:  ��  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=16x16   --*/
0x00,0x14,0xA4,0x44,0x24,0x34,0xAD,0x66,0x24,0x94,0x04,0x44,0xA4,0x14,0x00,0x00,
0x08,0x09,0x08,0x08,0x09,0x09,0x09,0xFD,0x09,0x09,0x0B,0x08,0x08,0x09,0x08,0x00,

/*--  ����:  ��  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=16x16   --*/
0x90,0x52,0x34,0x10,0xFF,0x10,0x34,0x52,0x80,0x70,0x8F,0x08,0x08,0xF8,0x08,0x00,
0x82,0x9A,0x56,0x63,0x22,0x52,0x8E,0x00,0x80,0x40,0x33,0x0C,0x33,0x40,0x80,0x00,

/*--  ����:  ��  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=16x16   --*/
0x10,0x10,0xFF,0x10,0x90,0x00,0xFE,0x92,0x92,0x92,0xF2,0x92,0x92,0x9E,0x80,0x00,
0x42,0x82,0x7F,0x01,0x80,0x60,0x1F,0x00,0xFC,0x44,0x47,0x44,0x44,0xFC,0x00,0x00,



};

void delay(unsigned int t)
{
	unsigned char j=0,i=0;
	for(i=0;i<t;i++)
		for(j=0;j<100;j++);
}

void write_command(unsigned char cmdcode)
{
	RS=0;
	RW=0;
	P0=cmdcode;
	delay(0);
	E=1;
	delay(0);
	E=0;
}

void write_data(unsigned char dispdata)
{
	RS=1;
	RW=0;
	P0=dispdata;
	delay(0);
	E=1;
	delay(0);
	E=0;
}



void sz_disp32(unsigned char pag,unsigned char col,unsigned int  chindata)
{
	unsigned char i=0,j=0;
	unsigned int temp;
	temp=chindata;
	for(j=0;j<2;j++)
	{
		write_command(Page_Add+pag+j);
		write_command(Col_Add+col);
		for(i=0;i<16;i++)
			{write_data(HZ_ZM[temp]);
			temp++;}		
	}
	
}

void sz_disp16(unsigned char pag,unsigned char col,unsigned int  chindata)
{
	unsigned char i=0,j=0;
	unsigned int temp;
	temp=chindata;
	for(j=0;j<2;j++)
	{
		write_command(Page_Add+pag+j);
		write_command(Col_Add+col);
		for(i=0;i<8;i++)
			{write_data(SZ_ZM[temp]);
			temp++;}		
		}
	
}


void Clr_Scr()
{
	unsigned char j=0,k=0;
	CS1=1;
	CS2=0;
	for(j=0;j<8;j++){
	write_command(Page_Add+j);
	write_command(Col_Add);
	 for(k=0;k<64;k++)
			write_data(0x00);
	}

    CS1=0;
	CS2=1;
	for(j=0;j<8;j++){
	write_command(Page_Add+j);
	write_command(Col_Add);
	 for(k=0;k<64;k++)
			write_data(0x00);
	}
	
}

void Init_lcd()
{
	RST=0;
	delay(10);
	RST=1;
	delay(10);

	CS1=1;
	CS2=1;

	delay(10);
	write_command(Disp_Off);
	write_command(Page_Add);
	write_command(Start_Line);
	write_command(Col_Add);
	write_command(Disp_On);

}


void disp_baudrate()				//��Ӧ���Ʋ���������������
{
	unsigned char temp;
	temp = P3 & 0xF0;
	
	if (0x00 == temp)	//9600
	{
		CS1=0;
	 	CS2=1;
		sz_disp16(2,0,CB009);
		sz_disp16(2,8,CB006);
		sz_disp16(2,16,CB000);
		sz_disp16(2,24,CB000);
	}
	else if (0x40 == temp)	//4800
	{
		CS1=0;
	 	CS2=1;
		sz_disp16(2,0,CB004);
		sz_disp16(2,8,CB008);
		sz_disp16(2,16,CB000);
		sz_disp16(2,24,CB000);
	}
	else if (0x80 == temp)	//2400
	{
		CS1=0;
	 	CS2=1;
		sz_disp16(2,0,CB002);
		sz_disp16(2,8,CB004);
		sz_disp16(2,16,CB000);
		sz_disp16(2,24,CB000);
	}
	else if (0xC0 == temp)	//1200
	{
	  	CS1=0;
	 	CS2=1;
		sz_disp16(2,0,CB001);
		sz_disp16(2,8,CB002);
		sz_disp16(2,16,CB000);
		sz_disp16(2,24,CB000);
	}
	else
	{
	}
} 




void main(void)
{
	unsigned char i = 0;
	unsigned char j=0,k=0;
	Init_lcd();
  	Clr_Scr();
	
	EA = 1;	//�����ж�
	EX0 = 1;	//���ⲿ�ж�0
	IT0 = 1;	//�����жϴ�����ʽΪ�½��ش�����ʽ
	
	//��1����ʾ�������ʡ�
	CS1=0;
	CS2=1;
	sz_disp32(0,0,CB01);
	sz_disp32(0,16,CB02);
	sz_disp32(0,32,CB03);
	  
	//��3����ʾ�����ݡ�
	CS1=0;
 	CS2=1;
	sz_disp32(4,0,CB04);
	sz_disp32(4,16,CB05);
	
	out=0;
	while(1)
	{
		//unsigned char column = col;		//scan point
		flag= P3 & 0x20;

		
		CS1=0;
	 	CS2=1;
	 	disp_baudrate();
	 	if(flag==0x20)
		{
			i++;
			if(i>3)
			i=0;
			if(i%4==0)
			{
				low1 = P1 & 0x0f;			//input low bit in hex
				high1 = P1 & 0xf0;		//input high bit in hex
				high1= high1>>4;
				sz_disp16(6,0,high1*16);
				sz_disp16(6,8,low1*16); 
			}
		
			if(i%4==1)
			{
				low2 = P1 & 0x0f;			//input low bit in hex
				high2 = P1 & 0xf0;		//input high bit in hex
				high2= high2>>4;
				sz_disp16(6,24,high2*16);
				sz_disp16(6,32,low2*16); 
			}
	
			if(i%4==2)
			{
				low3 = P1 & 0x0f;			//input low bit in hex
				high3 = P1 & 0xf0;		//input high bit in hex
				high3= high3>>4;
				sz_disp16(6,48,high3*16);
				sz_disp16(6,56,low3*16); 
			}
	
			if(i%4==3)
			{
				CS1=1;
		 	    CS2=0;
				low4 = P1 & 0x0f;			//input low bit in hex
				high4 = P1 & 0xf0;		//input high bit in hex
				high4= high4>>4;
				sz_disp16(6,8,high4*16);
				sz_disp16(6,16,low4*16); 
			}
			
			while(1)
			{
				if(P3 & 0x20 == 0x00)
					break;
			}
		}
	}		
}

