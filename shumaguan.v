`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:58:22 11/07/2013 
// Design Name: 
// Module Name:    shumaguan 
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
module shumaguan(digit_anode,segment,CLK,fenshu2,fenshu1,fenshu0,shengming);
input CLK;
input [3:0] fenshu2;
input [3:0] fenshu1;
input [3:0] fenshu0;
input [3:0] shengming;
output [3:0] digit_anode;//四个8段数码管选择
output [7:0] segment;//数码管的8段
reg  [6:0]       cnt1=0;
reg  [6:0]       cnt2=0;
reg  [6:0]       cnt3=0;
reg  [6:0]       cnt4=0;
reg  [6:0]       k=2;
reg  [3:0]       k1=3;
reg [3:0] digit_anode;
reg [7:0] segment;



always@(posedge CLK)
begin


//----------消影计数--------------//
	if(k==1&&cnt1<=10) cnt1=cnt1+1;
	if(k==1&&cnt1>10) 
	  begin 
		cnt1=0;
		k=2;
	  end

	if(k==2&&cnt2<=10) cnt2=cnt2+1;
   if(k==2&&cnt2>10)	
	  begin 
		cnt2=0;
		k=3;
	  end
	   
	if(k==3&&cnt3<=10) cnt3=cnt3+1;
   if(k==3&&cnt3>10)	
	  begin 
		cnt3=0;
		k=4;
	  end
	if(k==4&&cnt4<=10) cnt4=cnt4+1;
   if(k==4&&cnt4>10)	
	  begin 
		cnt4=0;
		k=1;
	  end
	  
//------------数码管显示-------------//

	  if(k==1&&cnt1<=k1)       
	   begin       //第一个数码管显示，显示分数的百位
			digit_anode=4'b0111;
			case(fenshu2)
				4'b0000:segment=8'b11000000;
				4'b0001:segment=8'b11111001;
				4'b0010:segment=8'b10100100;
				4'b0011:segment=8'b10110000;
				4'b0100:segment=8'b10011001;
				4'b0101:segment=8'b10010010;
				4'b0110:segment=8'b10000010;
				4'b0111:segment=8'b11111000;
				4'b1000:segment=8'b10000000;
				4'b1001:segment=8'b10010000;
		endcase
		end
		if(k==1&&cnt1>k1) digit_anode=4'b1111;
		if(k==2&&cnt2<k1)
		begin			////第二个数码管显示，显示分数的十位
			digit_anode=4'b1011;
			case(fenshu1)
				4'b0000:segment=8'b11000000;
				4'b0001:segment=8'b11111001;
				4'b0010:segment=8'b10100100;
				4'b0011:segment=8'b10110000;
				4'b0100:segment=8'b10011001;
				4'b0101:segment=8'b10010010;
				4'b0110:segment=8'b10000010;
				4'b0111:segment=8'b11111000;
				4'b1000:segment=8'b10000000;
				4'b1001:segment=8'b10010000;
			endcase
		end	
		if(k==2&&cnt2>k1) digit_anode=4'b1111;
		if(k==3&&cnt3<=k1) 
		begin		////第三个数码管显示，显示分数的个位
			digit_anode=4'b1101;
			case(fenshu0)
				4'b0000:segment=8'b11000000;
				4'b0001:segment=8'b11111001;
				4'b0010:segment=8'b10100100;
				4'b0011:segment=8'b10110000;
				4'b0100:segment=8'b10011001;
				4'b0101:segment=8'b10010010;
				4'b0110:segment=8'b10000010;
				4'b0111:segment=8'b11111000;
				4'b1000:segment=8'b10000000;
				4'b1001:segment=8'b10010000;
			endcase
				end	
		if(k==3&&cnt3>k1) digit_anode=4'b1111;
		if(k==4&&cnt4<=k1) 
		begin		////第四个数码管显示，显示生命值
			digit_anode=4'b1110;
			case(shengming)
				4'b0000:segment=8'b11000000;
				4'b0001:segment=8'b11111001;
				4'b0010:segment=8'b10100100;
				4'b0011:segment=8'b10110000;
				4'b0100:segment=8'b10011001;
				4'b0101:segment=8'b10010010;
				4'b0110:segment=8'b10000010;
				4'b0111:segment=8'b11111000;
				4'b1000:segment=8'b10000000;
				4'b1001:segment=8'b10010000;
			endcase
				end 
		if(k==4&&cnt4>k1) digit_anode=4'b1111;
	
end
endmodule
