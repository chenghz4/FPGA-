`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:54:28 11/07/2013 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test(  
CLK,   
RED,  
GREEN,  
BLUE,  
HS,  
VS,
left,
right,
leda,
rest,
rand_num,
fenshu,
a,
c,
life,
nandu,
LL
);  
  input CLK;   //ʱ������
  input left;  //�����ƶ�����
  input right; //�����ƶ�����
  input rest;  //����
  input  [7:0] rand_num;
  input nandu; //�����Ѷ�
  input   a;
  input   c;
  
  output leda;//���ڲ���
  output [2:0] RED,GREEN;  
  output [1:0] BLUE;  
  output HS,VS; 
  output reg [7:0]fenshu;
  output reg [3:0]life;  
   output reg [1:0]LL;
  parameter recal=10;
  parameter recah=120;
  parameter recbl=150;
  parameter recbh=20;
  parameter reccl=40;
  parameter recch=40;
  parameter recckl=20;
  parameter recckh=20;
  parameter recdl=20;
  parameter recdh=20;
  
  parameter recax1=200;
  parameter recax2=610;
  parameter recay1=60;
  parameter recay2=240;
  parameter recay3=420;
  parameter recay4=-120;
  
  
  parameter recbx1=240;
  parameter recbx2=350;
  parameter recbx3=460;
  parameter recby=40;
  
  parameter reccx=390;
  parameter reccy=440;
  parameter recckx=400;
  parameter reccky=440;
  
  parameter recdx1=260;
  parameter recdx2=380;
  parameter recdx3=500;
  parameter recdy=20;

parameter 			char_line0=48'h000000000000;  //END����
parameter			char_line1=48'h000000000000;
parameter			char_line2=48'h000000000000;
parameter			char_line3=48'h000000000000;
parameter			char_line4=48'h000000000000;
parameter			char_line5=48'h000000000000;
parameter			char_line6=48'h7ffcf83e7fc0;
parameter			char_line7=48'h180c38081870;
parameter			char_line8=48'h18043c081818;
parameter			char_line9=48'h18062c08180c;
parameter			char_line10=48'h18022c08180c;
parameter			char_line11=48'h18002e08180c;
parameter			char_line12=48'h181026081806;
parameter			char_line13=48'h181027081806;
parameter			char_line14=48'h183023081806;
parameter			char_line15=48'h1ff023081806;
parameter			char_line16=48'h183021881806;
parameter			char_line17=48'h181021c81806;
parameter			char_line18=48'h181020c81806;
parameter			char_line19=48'h180020e81806;
parameter			char_line20=48'h180020681806;
parameter			char_line21=48'h18002078180c;
parameter			char_line22=48'h18022038180c;
parameter			char_line23=48'h180220381808;
parameter			char_line24=48'h180420381818;
parameter			char_line25=48'h180c20181870;
parameter			char_line26=48'h7ffcf8187fc0;
parameter			char_line27=48'h000000000000;
parameter			char_line28=48'h000000000000;
parameter			char_line29=48'h000000000000;
parameter			char_line30=48'h000000000000;
parameter			char_line31=48'h000000000000;

  parameter            cmp1=8'b10000000;
  parameter            cmp2=8'b01010101;
  parameter            cmp3=8'b10101010;

reg[5:0] char_bit;
wire[9:0] y_dis;

  reg HS,VS;  
  reg [11:0] HS_CNT;// �м���   
  reg [9:0] VS_CNT;//������   
  reg  [9:0]       cnt=0; //�����½�����
  reg  [9:0]       cntx=0;//���Ϸ����߼���
  reg  [9:0]       cnty=0;
  reg  [9:0]       cntz=0;
  reg  [9:0]       cnt1=0;//�ϰ�1�½�����
  reg  [9:0]       cnt2=0;//�ϰ�2�½�����
  reg  [9:0]       cnt3=0;//�ϰ�3�½�����
  reg  [9:0]       cnt4=0;//����1�½�����
  reg  [9:0]       cnt5=0;//����2�½�����
  reg  [9:0]       cnt6=0;//����3�½�����
  
  
  reg signed [11:0]       left1=0;
  reg signed [11:0]       right1=0;
  reg signed [11:0]       res=0;
  reg 			        k1=1;//�ϰ�1ʹ��
  reg 				     k2=0;//�ϰ�2ʹ��
  reg 				     k3=0;//�ϰ�3ʹ��
  reg 			        k4=0;//����1ʹ��
  reg 				     k5=0;//����2ʹ��
  reg 				     k6=0;//����3ʹ��
  reg                  pk=0;
  reg [9:0]            pk1=0;
  reg                  p;
  reg                  p1;
  reg                  p2;
  reg                  si1=0;
  reg                  si2=0;
  reg                  si3=0;
  reg [9:0]            x1;
  reg [9:0]            y1;
  reg [9:0]            x2;
  reg [9:0]            y2;
  reg [7:0]             b;//�ƶ��ٶ�
  reg                  led1=0;
  reg                  endg=0; //������Ϸ
  reg [5:0]            life1=3;
  reg                  jiasu=0;
  reg [7:0]            lck;    //���������
  reg [7:0]            score=0;
  reg [5:0]            v1;
  reg [5:0]            v2;
  reg [7:0]            ColorOutput;
  
   wire         reset;
   wire         HBlank;
   wire         VBlank;
   wire         Blank;
	
 //----------------------����HS��VS�ź�---------------//   
  always @(posedge CLK)  
  begin  
		life=life1;
      if(857<=HS_CNT&&HS_CNT<=977) HS<=0;//����HS�ź�   
      else HS<=1;  
      if(HS_CNT==1039)  
			begin                  
              HS_CNT<=0;   
              if(VS_CNT==665)    VS_CNT<=0;//VS����   
              else VS_CNT<=VS_CNT+1; 
			end              
       else HS_CNT<=HS_CNT+1;//HS����   
       if(638<=VS_CNT&&VS_CNT<=644) VS<=0;//����VS�ź�   
       else VS<=1;    
		  
		
     end  
  
  
 
  assign HBlank = ((HS_CNT >= 0) & (HS_CNT < 800)) ? 1'b0 : 1'b1;
   
  assign VBlank = ((VS_CNT >= 0) & (VS_CNT < 600)) ? 1'b0 : 1'b1;
   
  assign Blank = (HBlank == 1'b1 | VBlank == 1'b1) ? 1'b1 : 1'b0;
	
  assign RED = (Blank == 1'b0) ? ColorOutput[7:5] : 
                3'b000;
  assign GREEN = (Blank == 1'b0) ? ColorOutput[4:2] : 
                  3'b000;
  assign BLUE = (Blank == 1'b0) ? ColorOutput[1:0] : 
                 2'b00;
  assign reset=rest;
  assign leda=led1;
  assign y_dis=VS_CNT;
  
   always @( left or right)
	begin
	  
		LL[0]=(left)&&1;
			LL[1]=(right)&&1;
	end
//-------------���ơ����Ƽ���------------//
   always @(negedge left)
	begin
	  
		if(left1-right1<7) left1=left1+1;
	end
	always @(negedge right)
	begin
	   
		if(right1-left1<7)right1=right1+1;
	end
	always @(left1 or right1)
		res=left1-right1;
	

//------------��������桢���ٹ��̼�������ֵ����------------//
	always @(posedge pk)
		begin
		 if(p1==1) pk1=pk1+1;
		 else  pk1=0;
		 lck=rand_num;
		 if(p2==0) score=score+1;
		 if(p2==1) score=0;
		 p=0;
		 if(cnty<=5) cnty=cnty+1;
		 else cnty=0;
		end
	 
//-----------------������------------------//		 
 always @(posedge CLK )
  begin
		if(jiasu==0&&nandu==0)begin v1=2;v2=3;end//�ı��Ѷ�
		if(jiasu==0&&nandu==1)begin v1=3;v2=4;end
		if(a==0&&c==0)begin b=20;end//�ı��Ѷ�
		if(a==0&&c==1)begin b=25;end
		if(a==1&&c==0)begin b=30;end
		if(a==1&&c==1)begin b=35;end
		if(endg==0) //����Ϸû�н���ʱִ��
		  begin
		    if(score==0)p2=0;
			 fenshu=score;
				if(HS_CNT==0 && VS_CNT==0) //����cnt
			    begin
				  if(cnt<=180)cnt=cnt+v1;
			    end
		      if(cnt>180 && cnt<190) cnt=0;
		 
						if(p==0) pk=0;
						
						if(k1==1 && HS_CNT==0 && VS_CNT==0)  //��k1ʹ��ʱcnt1��ʼ������ÿһ֡��2���½�����Ļ���·�ʱcnt1����
							begin
								if(recby+cnt1<600) cnt1=cnt1+v1;
							end
						if(k2==1 && HS_CNT==0 && VS_CNT==0)  //��k2ʹ��ʱcnt2��ʼ������ÿһ֡��2���½�����Ļ���·�ʱcnt2����
							begin
								if(recby+cnt2<600) cnt2=cnt2+v1;
							end
						if(k3==1 && HS_CNT==0 && VS_CNT==0)  //��k3ʹ��ʱcnt3��ʼ������ÿһ֡��2���½�����Ļ���·�ʱcnt3����
							begin
								if(recby+cnt3<600) cnt3=cnt3+v1;
							end
						if(k4==1 && HS_CNT==0 && VS_CNT==0)  //��k4ʹ��ʱcnt4��ʼ������ÿһ֡��2���½�����Ļ���·�ʱcnt4����
							begin
								if(recdy+cnt4<600) cnt4=cnt4+v2;
							end
						if(k5==1 && HS_CNT==0 && VS_CNT==0)  //��k5ʹ��ʱcnt5��ʼ������ÿһ֡��2���½�����Ļ���·�ʱcnt5����
							begin
								if(recdy+cnt5<600) cnt5=cnt5+v2;
							end
						if(k6==1 && HS_CNT==0 && VS_CNT==0)  //��k6ʹ��ʱcnt6��ʼ������ÿһ֡��2���½�����Ļ���·�ʱcnt6����
							begin
								if(recdy+cnt6<600) cnt6=cnt6+v2;
							end
							
						if( (k1==1)&&(lck>=cmp1)&&(recby+cnt1) >= 350 ) begin k3=1;pk=1;end    //k1ʹ��ʱ�������������128ʱ���ϰ�1�½���350����֮��k3ʹ�ܣ��������С��128��k2ʹ�ܣ����ϰ�1�½�����Ļ���·�ʱk1����
						if( (k1==1)&&(lck<cmp1) &&(recby+cnt1) >= 350 ) begin k2=1;pk=1;end
						if( (k1==1)&&(recby+cnt1)>=600) 
						begin
						if(lck>=cmp1)
						begin k1=0;pk=1;cnt1=0;end
						else if(lck<cmp1)begin k1=0;pk=1;cnt1=150;end
						end
						if( (k2==1)&&(lck>=cmp1)&&(recby+cnt2) >= 350)  begin k3=1;pk=1;end    //k2ʹ��ʱ�������������128ʱ���ϰ�2�½���350����֮��k1ʹ�ܣ��������С��128��k1ʹ�ܣ����ϰ�2�½�����Ļ���·�ʱk2����
						if( (k2==1)&&(lck<cmp1) &&(recby+cnt2) >= 350 ) begin k1=1;pk=1;end 
						if( (k2==1)&&(recby+cnt2)>=600) 
						begin
						if(lck>=cmp1)
						begin k2=0;pk=1;cnt2=0;end
						else if(lck<cmp1)begin k2=0;pk=1;cnt2=175;end
						end
						if( (k3==1)&&(lck>=cmp1)&&(recby+cnt3) >= 350 ) begin k2=1;pk=1;end    //k3ʹ��ʱ�������������128ʱ���ϰ�3�½���350����֮��k2ʹ�ܣ��������С��128��k1ʹ�ܣ����ϰ�3�½�����Ļ���·�ʱk3����
						if( (k3==1)&&(lck<cmp1) &&(recby+cnt3) >= 350 ) begin k1=1;pk=1;end 
						if( (k3==1)&&(recby+cnt3)>=600) 
						begin
						if(lck<=cmp1)
						begin k3=0;pk=1;cnt3=0;end
						else if(lck>cmp1)begin k3=0;pk=1;cnt3=200;end
						end
						if( (cnty==3)&&(lck<cmp2) ) k4=1;                        	//ÿ��һ���ϰ����䵽����cnty��1����cnty==6ʱ���㣬��cnty==3ʱ�����������ֵѡ�����С���������λ�ã�
						if( (cnty==3)&&(lck>cmp2)&&(lck<cmp3) ) k5=1;
						if( (cnty==3)&&(lck>cmp3) ) k6=1;
						if( (k4==1)&&(recdy+cnt4)>=600)begin k4=0;cnt4=0;end
						if( (k5==1)&&(recdy+cnt5)>=600)begin k5=0;cnt5=0;end
						if( (k6==1)&&(recdy+cnt6)>=600)begin k6=0;cnt6=0;end
						
	
	 
	if(cnt>120) //���Ϸ������жϺͼ���
	begin 
		if(HS_CNT==0 && VS_CNT==0) cntx=cntx+v1;
		if(cntx>60 && cntx<70) cntx=0;
	end
	else cntx=0;
//--------------����ʱ�ٶȳ��Զ������ٺ󾭹�10���ϰ��ָ�ԭ��-------------------//	
	if(jiasu==0) p1=0;
	if(jiasu==1)
	  begin 
	   p1=1;
	  end
	if(pk1==10) 
		begin 
		 if(jiasu) begin v1=v1>>2;v2=v2>>2;end
		 jiasu=0;
		end
//---------------------�ܵ����ϰ��С�˼�����С������ʾ����-------------------//
	if(!endg &&  (((HS_CNT >= recax1 && HS_CNT < (recax1+recal)) || (HS_CNT >= recax2 && HS_CNT < (recax2+recal))) && VS_CNT >= cntx   && VS_CNT < cnt ) ||  //���Ϸ�����
	
		  (((HS_CNT >= recax1 && HS_CNT < (recax1+recal)) || (HS_CNT >= recax2 && HS_CNT < (recax2+recal))) && VS_CNT >= (recay1+cnt) && VS_CNT < (recay1+recah+cnt) ) || //����
	
	
	     (((HS_CNT >= recax1 && HS_CNT < (recax1+recal)) || (HS_CNT >= recax2 && HS_CNT < (recax2+recal))) && VS_CNT >= (recay2+cnt) && VS_CNT < (recay2+recah+cnt) ) || //����
	
	
	     (((HS_CNT >= recax1 && HS_CNT < (recax1+recal)) || (HS_CNT >= recax2 && HS_CNT < (recax2+recal))) && VS_CNT >= (recay3+cnt) && VS_CNT < (recay3+recah+cnt) ) || //����
           
		    
		    k3*(HS_CNT >= recbx3 && HS_CNT < (recbx3+recbl))&& VS_CNT >= (recby+cnt3) && VS_CNT < (recby+recbh+cnt3) //�ϰ�3
			 
																					
		  )                                                                                                              
		  
		  
		  ColorOutput=8'b11100000;
		 else if(!endg && k1*(HS_CNT >= recbx1 && HS_CNT < (recbx1+recbl))&& VS_CNT >= (recby+cnt1) && VS_CNT < (recby+recbh+cnt1) ) 
		 
		  ColorOutput=8'b11111000;
		  	 else if(!endg &&  k2*(HS_CNT >= recbx2 && HS_CNT < (recbx2+recbl))&& VS_CNT >= (recby+cnt2) && VS_CNT < (recby+recbh+cnt2)  ) 
		 
		  ColorOutput=8'b11101011;
		  
		  else if(!endg && k4*(HS_CNT >= recdx1 && HS_CNT < (recdx1+recdl))&& VS_CNT >= (recdy+cnt4) && VS_CNT < (recdy+recdh+cnt4) ||  //����1
		    k5*(HS_CNT >= recdx2 && HS_CNT < (recdx2+recdl))&& VS_CNT >= (recdy+cnt5) && VS_CNT < (recdy+recdh+cnt5) ||  //����2
		    k6*(HS_CNT >= recdx3 && HS_CNT < (recdx3+recdl))&& VS_CNT >= (recdy+cnt6) && VS_CNT < (recdy+recdh+cnt6) )
			 ColorOutput=8'b11111100;
		
		else if(!endg &&	 (((HS_CNT >= reccx-b*res && HS_CNT < (recckx-b*res)) || (HS_CNT >= ((recckx+recckl)-b*res) && HS_CNT < ((reccx+reccl)-b*res))) && VS_CNT >= (reccy) && VS_CNT < (reccy+recckh)) ||   //��
		  ((HS_CNT >= reccx-b*res && HS_CNT < ((reccx+reccl)-b*res)) && VS_CNT >= (reccy+recckh) && VS_CNT < (reccy+recch))		 )	 
			  ColorOutput=8'b11111111;
   else 
	  ColorOutput=8'b00000000;
	  
	 
	if ( HS_CNT<200 || HS_CNT>620) ColorOutput=8'b01101111;//�ܵ������������ɫ��
	

//----------------������ʱ���ж�С���Ƿ������ϰ��Ｐ�Ƿ�Ե�����-----------//	
  if(jiasu==0)begin
	if(k1==1)  
		begin 
			x1=reccx-b*res;
			y1=reccy;
			x2=recbx1;
			y2=recby+cnt1;
			if(  (x2+recbl)>x1 && (y2+recbh)>y1 && (y1+recch)>y2 ) si1=1;
		end
	if(k2==1)  
		begin 
			x1=reccx-b*res;
			y1=reccy;
			x2=recbx2;
			y2=recby+cnt2;
			 if((reccx-b*res)>recbx2)
				begin
				   if(  (x2+recbl)>x1 && (y2+recbh)>y1 && (y1+recch)>y2 ) si2=1;
				end
			 else
				if((x1+reccl)>x2 && (y2+recbh)>y1 && (y1+recch)>y2) si2=1;

		end
	if(k3==1)  
		begin 
			x1=reccx-b*res;
			y1=reccy;
			x2=recbx3;
			y2=recby+cnt3;
			if(  (x1+reccl)>x2 && (y2+recbh)>y1 && (y1+recch)>y2 ) si3=1;
		end
		
	if( (si1==1) && (recby+cnt1>reccy+recch) ) begin life1=life1-1;si1=0;end//�����ϰ��������ֵ
	if( (si2==1) && (recby+cnt2>reccy+recch) ) begin life1=life1-1;si2=0;end//�����ϰ��������ֵ
	if( (si3==1) && (recby+cnt3>reccy+recch) ) begin life1=life1-1;si3=0;end//�����ϰ��������ֵ
	
	if(k4==1)  
		begin 
			x1=reccx-b*res;
			y1=reccy;
			x2=recdx1;
			y2=recdy+cnt4;
				if(x1>recdx1)
			begin
			if((10+x1)<=(recdx1+20)&& y2>=y1 ) begin jiasu=1;v1=4*v1;v2=4*v2;life1=life1+1;k4=0;cnt4=0;end  
			else jiasu=0;
			end
			else if(x1<=recdx1)
			begin
			if((30+x1)>=recdx1&& y2>=y1 ) begin jiasu=1;v1=4*v1;v2=4*v2;life1=life1+1;k4=0;cnt4=0;end  
			else jiasu=0;
	     end
			end
	if(k5==1)  
		begin 
			x1=reccx-b*res;
			y1=reccy;
			x2=recdx2;
			y2=recdy+cnt5;
			if(x1>recdx2)
			begin
			if((10+x1)<=(recdx2+20)&& y2>=y1 ) begin jiasu=1;v1=4*v1;v2=4*v2;life1=life1+1;k5=0;cnt5=0;end  
			else jiasu=0;
			end
			else if(x1<=recdx2)
			begin
			if((30+x1)>=recdx2&& y2>=y1 ) begin jiasu=1;v1=4*v1;v2=4*v2;life1=life1+1;k5=0;cnt5=0;end  
			else jiasu=0;
	     end
			end
	if(k6==1)  
		begin 
			x1=reccx-b*res;
			y1=reccy;
			x2=recdx3;
			y2=recdy+cnt6;
				if(x1>recdx3)
			begin
			if((10+x1)<=(recdx3+20)&& y2>=y1 ) begin jiasu=1;v1=4*v1;v2=4*v2;life1=life1+1;k6=0;cnt6=0;end  
			else jiasu=0;
			end
			else if(x1<=recdx3)
			begin
			if((30+x1)>=recdx3&& y2>=y1 ) begin jiasu=1;v1=4*v1;v2=4*v2;life1=life1+1;k6=0;cnt6=0;end  
			else jiasu=0;
	     end
			end
	end
	if(life1==0) endg=1;  //û������ʱ��Ϸ����

	

		 
	end
//-----------------------��Ϸ����ʱ��ʾ��END��------------------------//
   else begin       ///endgame
	  
	   if(HS_CNT==12'd380) char_bit<=6'd47;
			else if(HS_CNT>380&&HS_CNT<428) char_bit<=char_bit-1'b1;
	  
	  if(Blank)  ColorOutput=8'b00000000;
		else if(HS_CNT>380&&HS_CNT<428)
		begin
			case(y_dis)131:if(char_line0[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					132:if(char_line1[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					133:if(char_line2[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					134:if(char_line3[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					135:if(char_line4[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					136:if(char_line5[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					137:if(char_line6[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					138:if(char_line7[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					139:if(char_line8[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					140:if(char_line9[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					141:if(char_line10[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					142:if(char_line11[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					143:if(char_line12[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					144:if(char_line13[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					145:if(char_line14[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					146:if(char_line15[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					147:if(char_line16[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					148:if(char_line17[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					149:if(char_line18[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					150:if(char_line19[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					151:if(char_line20[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					152:if(char_line21[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					153:if(char_line22[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					154:if(char_line23[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					155:if(char_line24[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					156:if(char_line25[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					157:if(char_line26[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					158:if(char_line27[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					159:if(char_line28[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					160:if(char_line29[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					161:if(char_line30[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					162:if(char_line31[char_bit]) ColorOutput=8'b111_000_00;
								else ColorOutput=8'b000_000_00;
					default:ColorOutput=8'b000_000_00;
					endcase
					end
					else ColorOutput=8'b000_000_00;
	 if(reset==1) begin endg=0;life1=3;p2=1;end   //����
end
end  
endmodule  


