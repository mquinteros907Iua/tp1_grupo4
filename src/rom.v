module rom(input wire [7:0] addr,output reg [7:0] data_out);

    reg [7:0] rom_mem [0:255];
    integer i;  

    initial begin
        rom_mem[0] = 8'hAA;
        rom_mem[1] = 8'hFF;
        rom_mem[2] = 8'hF4;
        rom_mem[3] = 8'hB2;
        rom_mem[4] = 8'hE0;
        rom_mem[5] = 8'hD3;
        rom_mem[6] = 8'hF1;
        rom_mem[7] = 8'hB6;
        rom_mem[8] = 8'hA3;
        for (i = 9; i < 256; i = i + 1) begin
            rom_mem[i] = 8'h00;
        end
    end

    always @(*) begin
        data_out = rom_mem[addr];
    end

endmodule
