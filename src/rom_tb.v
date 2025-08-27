`timescale 1ns/1ps
`include "rom.v"

module tb_rom;

    reg [7:0] addr;
    wire [7:0] data_out;

    rom rom_inst (
        .addr(addr),
        .data_out(data_out)
    );

    initial begin
        $dumpfile("rom.vcd");
        $dumpvars(0, tb_rom);
        
        addr = 0;
        #10;
        $display("Tiempo: %0t | Direccion: %0d | Dato leido: %h", $time, addr, data_out);

        addr = 1;
        #10;
        $display("Tiempo: %0t | Direccion: %0d | Dato leido: %h", $time, addr, data_out);

        addr = 2;
        #5;
        $display("Tiempo: %0t | Direccion: %0d | Dato leido: %h", $time, addr, data_out);
        
        addr = 3;
        #5;
        $display("Tiempo: %0t | Direccion: %0d | Dato leido: %h", $time, addr, data_out);

        addr = 4;
        #10;
        $display("Tiempo: %0t | Direccion: %0d | Dato leido: %h", $time, addr, data_out);

        addr = 5;
        #5;
        $display("Tiempo: %0t | Direccion: %0d | Dato leido: %h", $time, addr, data_out);

        addr = 6;
        #5;
        $display("Tiempo: %0t | Direccion: %0d | Dato leido: %h", $time, addr, data_out);

        addr = 7;
        #5;
        $display("Tiempo: %0t | Direccion: %0d | Dato leido: %h", $time, addr, data_out);

        addr = 8;
        #5;
        $display("Tiempo: %0t | Direccion: %0d | Dato leido: %h", $time, addr, data_out);

        #10;
        $finish;  
    end

endmodule
