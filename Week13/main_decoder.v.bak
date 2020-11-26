module main_decoder(
    input [5:0] opcode,
    output MemToReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, 
    output [1:0] ALUOp
);

reg _MemToReg, _MemWrite, _Branch, _ALUSrc, _RegDst, _RegWrite;
reg [1:0] _ALUOp;

assign RegWrite    = _RegWrite;
assign RegDst      = _RegDst;
assign ALUSrc      = _ALUSrc;
assign Branch      = _Branch;
assign MemWrite    = _MemWrite;
assign MemToReg    = _MemToReg;
assign ALUOp       = _ALUOp;

always @*
begin
    case (opcode)
        6'h00:  
        begin   
            _RegWrite    = 1'b1;
            _RegDst      = 1'b1;
            _ALUSrc      = 1'b0;
            _Branch      = 1'b0;
            _MemWrite    = 1'b0;
            _MemToReg    = 1'b0;
            _ALUOp       = 2'b10;
        end
        6'h23:   
        begin
            _RegWrite    = 1'b1;
            _RegDst      = 1'b0;
            _ALUSrc      = 1'b1;
            _Branch      = 1'b0;
            _MemWrite    = 1'b0;
            _MemToReg    = 1'b1;
            _ALUOp       = 2'b00;
        end
        6'h2B:
        begin
            _RegWrite    = 1'b0;
            _ALUSrc      = 1'b1;
            _Branch      = 1'b0;
            _MemWrite    = 1'b1;      
            _ALUOp       = 2'b00;
        end
        6'h04:
        begin
            _RegWrite    = 1'b0;
            
            _ALUSrc      = 1'b0;
            _Branch      = 1'b1;
            _MemWrite    = 1'b0;
            _ALUOp       = 2'b01;
        end
    endcase
end

endmodule