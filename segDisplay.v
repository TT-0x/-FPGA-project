module seven_segment_display(
    input [7:0] score,
    output reg [6:0] segments
);

    always @(*) begin
        if (score >= 8'b00000000 && score <= 8'b00000100) // 0-4分
            segments = 7'b1000110; // C
        else if (score >= 8'b00000101 && score <= 8'b00001110) // 5-14分
            segments = 7'b0000011; // B
        else if (score >= 8'b00001111 && score <= 8'b00010100) // 15-20分
            segments = 7'b0001000; // A
        else if (score >= 8'b00010101 && score <= 8'b00011001) // 21-25分
            segments = 7'b0010010; // S
        else
            segments = 7'b1111111; // 無效的分數顯示為空白
    end
endmodule
