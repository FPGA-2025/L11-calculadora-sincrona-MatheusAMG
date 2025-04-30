module calculadora_sincrona(
    input clk,
    input rst,
    input [7:0] entrada,
    input [2:0] codigo,
    output reg [7:0] saida
);

reg [7:0] acumulador;

always @(posedge clk, posedge rst) begin
    if(rst) begin
        acumulador <= 0;
        saida <=0;
    end
    else begin
        if (codigo == 3'b001) begin
            acumulador <= acumulador + entrada;
            saida <= 0;
        end

        else if (codigo == 3'b010) begin
            acumulador <= acumulador - entrada;
            saida <= 0;
        end

        else if (codigo == 3'b011) begin
            saida <= acumulador;
        end

        else begin
            saida <= entrada;
        end
    end
end

endmodule