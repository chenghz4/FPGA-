`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:52 11/07/2013 
// Design Name: 
// Module Name:    bcd 
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
module bcd (life,fenshu,fenshu2,fenshu1,fenshu0,shengming);  //  
parameter  B_SIZE = 8;  //B_SIZE为二进制数所占的位数，可根据需要进行扩展 
parameter  ena=1;
input    [3:0]   life;
input    [7:0]   fenshu;  
output  reg [3:0]   fenshu2;  
output  reg [3:0]   fenshu1;
output  reg[3:0]   fenshu0;
output   [3:0]   shengming;  


wire  [B_SIZE-1 : 0]   binary; 
reg   [B_SIZE-1 : 0]   bin; 
reg   [B_SIZE+3 : 0]  bcd;  // bcd的长度应根据实际情况进行修改 
reg   [B_SIZE+3 : 0]  result; //result的长度=bcd的长度  

always@( fenshu )
 begin   
	bin = fenshu;  result = 0;
	if ( ena == 0 )   bcd = 0; 
	else 
		begin 
			repeat ( B_SIZE-1 )    //使用repeat语句进行循环计算   
				begin 
					result[0] = bin[B_SIZE-1]; 
					if ( result[3 : 0] > 4 )     result[3 : 0] = result[3 : 0] + 4'd3;
					if ( result[7 : 4] > 4 )     result[7 : 4] = result[7 : 4] + 4'd3;
					if ( result[11 : 8] > 4 )    result[11 : 8] = result[11 : 8] + 4'd3; //扩展时应参照此三条if语句续写 

					result = result << 1;    
					bin = bin << 1; 
				end   
 
				result[0] = bin[B_SIZE-1];
		end
		fenshu2=result[11:8];
		fenshu1=result[7:4];
		fenshu0=result[3:0];
		
		
 end 
 assign shengming=life;
 
endmodule
