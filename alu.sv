
module alu (rs1,rs2,oper,alu_output,zero);

input logic [3:0] oper;

input logic [31:0] rs1,rs2;

output logic[31:0] alu_output;

output logic zero;

assign zero =1'b0;

always_comb
    
	 begin
           
			   case(oper)
			
			   4'b0010: alu_output = rs1 + rs2;	
          
	      	4'b0011: alu_output = rs1 ^ rs2;
           	 
				4'b0000: alu_output = rs1 & rs2;
            
				4'b0001: alu_output = rs1 | rs2;
            
				default
				        
						  alu_output=32'b00000000000000000000000000000000;
				
				endcase
end

endmodule