

module aFinalP(

    output reg [7:0] dr, dg, db,

    output reg [3:0] comm,

    input clk,

    input [3:0] btn, // 4個按鈕輸入

    output reg[7:0] seg, // 每個按鈕與相應列的得分
	 
	 output reg[7:0] score_out

);

    parameter logic [7:0] a1 [7:0] = 

    '{8'b00111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111};

	parameter logic [7:0] a2 [7:0] = 

    '{8'b11111111,

      8'b00111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111};

    parameter logic [7:0] a3 [7:0] = 

    '{8'b11001111,

		8'b11111111,

		8'b00111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111};

	parameter logic [7:0] a4 [7:0] = 

    '{8'b11111111,

		8'b11001111,

		8'b11111111,

		8'b00111111,

		8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111};

	parameter logic [7:0] a5 [7:0] = 

    '{8'b11110011,

		8'b11111111,

		8'b11001111,

		8'b11111111,

		8'b00111111,

		8'b11111111,

		8'b11111111,

      8'b11111111};

	parameter logic [7:0] a6 [7:0] = 

    '{8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11111111,

      8'b11111111};

	parameter logic [7:0] a7 [7:0] = 

    '{8'b11111100,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11111111};

	parameter logic [7:0] a8 [7:0] = 

    '{8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b00111111};//1-1

	parameter logic [7:0] a9 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11001111,

      8'b11111111};

parameter logic [7:0] a10 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11001111};//2-2

parameter logic [7:0] a11 [7:0] = 

    '{8'b11110011,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11110011,

      8'b11111111};

parameter logic [7:0] a12 [7:0] = 

    '{8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11110011};//3-3

parameter logic [7:0] a13 [7:0] = 

    '{8'b00111111,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b11111111};

parameter logic [7:0] a14 [7:0] = 

    '{8'b11111111,

      8'b00111111,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100};//4-4

parameter logic [7:0] a15 [7:0] = 

    '{8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111111,

      8'b11111111};

parameter logic [7:0] a16 [7:0] = 

    '{8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111111};

parameter logic [7:0] a17 [7:0] = 

    '{8'b11111100,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11111111,

      8'b11110011,

      8'b11111111};

parameter logic [7:0] a18 [7:0] = 

    '{8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11111111,

      8'b11110011};//5-3

parameter logic [7:0] a19 [7:0] = 

    '{8'b11110011,

      8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11111111};

parameter logic [7:0] a20 [7:0] = 

    '{8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b00111111};//6-1

parameter logic [7:0] a21 [7:0] = 

    '{8'b11110011,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11001111,

      8'b11111111};

parameter logic [7:0] a22 [7:0] = 

    '{8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111100,

      8'b11111111,

      8'b11001111};//7-2

parameter logic [7:0] a23 [7:0] = 

    '{8'b11001111,

      8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111100,

      8'b11111111};

parameter logic [7:0] a24 [7:0] = 

    '{8'b00111111,

      8'b11001111,

      8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11110011,

      8'b11111111,

      8'b11111100};//8-1

parameter logic [7:0] a25 [7:0] = 

    '{8'b11001111,

      8'b00111111,

      8'b11001111,

      8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11110011,

      8'b11111111};

parameter logic [7:0] a26 [7:0] = 

    '{8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11001111,

      8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11110011};//9-3

 

parameter logic [7:0] a27 [7:0] = 

    '{8'b11110011,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11001111,

      8'b11111100,

      8'b11110011,

      8'b11111111};

  

parameter logic [7:0] a28 [7:0] = 

    '{8'b00111111,

      8'b11110011,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11001111,

      8'b11111100,

      8'b11110011};//10-3

  

parameter logic [7:0] a29 [7:0] = 

    '{8'b11111100,

      8'b00111111,

      8'b11110011,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11001111,

      8'b11111100};//11-4

parameter logic [7:0] a30 [7:0] = 

    '{8'b11111111,

      8'b11111100,

      8'b00111111,

      8'b11110011,

      8'b11001111,

      8'b11111111,

      8'b00111111,

      8'b11001111};//12-2

parameter logic [7:0] a31 [7:0] = 

     '{8'b11111111,

      8'b111111111,

      8'b11111100,

      8'b00111111,

      8'b11110011,

      8'b11001111,

      8'b11111111,

      8'b00111111};//13-1

parameter logic [7:0] a32 [7:0] = 

    '{8'b00111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b00111111,

      8'b11110011,

      8'b11001111,

      8'b11111111};

		

parameter logic [7:0] a33 [7:0] = 

    '{8'b11001111,

      8'b00111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b00111111,

      8'b11110011,

      8'b11001111};//14-2

parameter logic [7:0] a34 [7:0] = 

    '{8'b11111111,

      8'b11001111,

      8'b00111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b00111111,

      8'b11110011};//15-3

 

parameter logic [7:0] a35 [7:0] = 

    '{8'b11110011,

      8'b11111111,

      8'b11001111,

      8'b00111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b00111111};//16-1

  

parameter logic [7:0] a36 [7:0] = 

    '{8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11001111,

      8'b00111111,

      8'b11111111,

      8'b11111111,

      8'b11111100};//17-4

  

parameter logic [7:0] a37 [7:0] = 

    '{8'b11111111,

      8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11001111,

      8'b00111111,

      8'b11111111,

      8'b11111111};

parameter logic [7:0] a38 [7:0] = 

    '{8'b11001111,

      8'b11111111,

      8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11001111,

      8'b00111111,

      8'b11111111};

parameter logic [7:0] a39 [7:0] = 

    '{8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11001111,

      8'b00111111};//18-1

parameter logic [7:0] a40 [7:0] = 

    '{8'b00111111,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111100,

      8'b11110011,

      8'b11111111,

      8'b11001111};//19-2

parameter logic [7:0] a41 [7:0] = 

    '{8'b11111100,

      8'b00111111,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111100,

      8'b11110011,

      8'b11111111};

parameter logic [7:0] a42 [7:0] = 

    '{8'b11111111,

      8'b11111100,

      8'b00111111,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111100,

      8'b11110011};//20-3

parameter logic [7:0] a43 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b00111111,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111100};//21-4

parameter logic [7:0] a44 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b00111111,

      8'b11111111,

      8'b11001111,

      8'b11111111};

 

parameter logic [7:0] a45 [7:0] = 

    '{8'b11001111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b00111111,

      8'b11111111,

      8'b11001111};//22-2

  

parameter logic [7:0] a46 [7:0] = 

    '{8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b00111111,

      8'b11111111};

  

parameter logic [7:0] a47 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100,

      8'b00111111};//23-1

parameter logic [7:0] a48 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111100};//24-4

parameter logic [7:0] a49 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111};

parameter logic [7:0] a50 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111111,

      8'b11111111};

parameter logic [7:0] a51 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11001111,

      8'b11111111,

      8'b11111111};

parameter logic [7:0] a52 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11001111,

      8'b11111111};

		

parameter logic [7:0] a53 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11001111};//25-2

parameter logic [7:0] a54 [7:0] = 

    '{8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111,

      8'b11111111};

		

parameter logic [7:0] pass [7:0] =

	'{8'b11000011,

      8'b10111101,

      8'b01111110,

      8'b01111110,

      8'b01111110,

      8'b01111110,

      8'b10111101,

      8'b11000011};

parameter logic [7:0] fail [7:0] =

    '{8'b11000011,
      8'b10111101,
      8'b01011010,
      8'b01101110,
      8'b01101110,
      8'b01011010,
      8'b10111101,
      8'b11000011};

parameter logic [7:0] pass_smile [7:0] =
	 '{8'b11000011,
      8'b10111101,
      8'b01101010,
      8'b01011110,
      8'b01011110,
      8'b01101010,
      8'b10111101,
      8'b11000011};



      

    reg [2:0] cnt;

	 reg [5:0] flag;

	 wire clk_div1, clk_div2, clk_div3;

	 reg [3:0] btn_pressed;

    reg [3:0] btn_stable;

    reg [3:0] btn_debounced; // 防抖後的按鈕狀態

	 reg [3:0] btn_buffer1, btn_buffer2;

	 reg[7:0] score;

divfreq F0(clk, clk_div1);

divfreq2 F1(clk, clk_div2);

divfreq3 F3(clk, clk_div3);


seven_segment_display F2(score,seg);

integer i;

initial begin
    cnt = 0;
    dr = 8'b11111111;
    dg = 8'b11111111;
    db = 8'b11111111;
    comm = 4'b1000;
    flag = 6'b000000;
    btn_pressed = 0;
    score = 8'b00000000;
    btn_stable = 0;
    btn_buffer1 = 0;
    btn_buffer2 = 0;
    btn_debounced = 0;

end


always @(posedge clk) begin

    btn_buffer1 <= btn;

    btn_buffer2 <= btn_buffer1;

    btn_stable <= btn_buffer1 & btn_buffer2;

end

// 按鈕穩定狀態

always @(posedge clk_div1) begin

    btn_debounced <= btn_stable;

end

always @(posedge clk_div1) begin

    if (cnt >= 7)

        cnt <= 0;

    else

        cnt <= cnt + 1;

    comm <= {1'b1, cnt};

    case (flag)

    6'b00000: dr <= a1[cnt];

    6'b000001: dr <= a2[cnt];

    6'b000010: dr <= a3[cnt];

    6'b000011: dr <= a4[cnt];

    6'b000100: dr <= a5[cnt];

    6'b000101: dr <= a6[cnt];

    6'b000110: dr <= a7[cnt];

    6'b000111: dr <= a8[cnt];

    6'b001000: dr <= a9[cnt];

    6'b001001: dr <= a10[cnt];

    6'b001010: dr <= a11[cnt];

    6'b001011: dr <= a12[cnt];

    6'b001100: dr <= a13[cnt];

    6'b001101: dr <= a14[cnt];

    6'b001110: dr <= a15[cnt];

    6'b001111: dr <= a16[cnt];

    6'b010000: dr <= a17[cnt];

    6'b010001: dr <= a18[cnt];

    6'b010010: dr <= a19[cnt];

    6'b010011: dr <= a20[cnt];

    6'b010100: dr <= a21[cnt];

    6'b010101: dr <= a22[cnt];

    6'b010110: dr <= a23[cnt];

    6'b010111: dr <= a24[cnt];

    6'b011000: dr <= a25[cnt];

    6'b011001: dr <= a26[cnt];

    6'b011010: dr <= a27[cnt];

    6'b011011: dr <= a28[cnt];

    6'b011100: dr <= a29[cnt];

    6'b011101: dr <= a30[cnt];

    6'b011110: dr <= a31[cnt];

    6'b011111: dr <= a32[cnt];

    6'b100000: dr <= a33[cnt];

    6'b100001: dr <= a34[cnt];

    6'b100010: dr <= a35[cnt];

    6'b100011: dr <= a36[cnt];

    6'b100100: dr <= a37[cnt];

    6'b100101: dr <= a38[cnt];

    6'b100110: dr <= a39[cnt];

    6'b100111: dr <= a40[cnt];

    6'b101000: dr <= a41[cnt];

    6'b101001: dr <= a42[cnt];

    6'b101010: dr <= a43[cnt];

    6'b101011: dr <= a44[cnt];

    6'b101100: dr <= a45[cnt];

    6'b101101: dr <= a46[cnt];

    6'b101110: dr <= a47[cnt];

    6'b101111: dr <= a48[cnt];

    6'b110000: dr <= a49[cnt];

    6'b110001: dr <= a50[cnt];

    6'b110010: dr <= a51[cnt];

    6'b110011: dr <= a52[cnt];

    6'b110100: dr <= a53[cnt];

    6'b110101: dr <= a54[cnt];

	 6'b110110: dg <= pass[cnt];

    6'b110111: dr <= fail[cnt];
	 6'b111000: begin dg <= pass_smile[cnt]; dr<=pass_smile[cnt]; end


    endcase

end




// 檢查 flag 條件的函數
function check_flag_condition;
    input [5:0] flag;
    input [1:0] index;
    begin
        case (index)
            2'b00: check_flag_condition = (flag == 6'b001000 || flag == 6'b010100 || flag == 6'b011110 || 
                                           flag == 6'b001111 || flag == 6'b100011 || flag == 6'b100111 || 
                                           flag == 6'b101111);
            2'b01: check_flag_condition = (flag == 6'b001010 || flag == 6'b010110 || flag == 6'b011100 || 
                                           flag == 6'b100001 || flag == 6'b101000 || flag == 6'b101101 || 
                                           flag == 6'b110101);
            2'b10: check_flag_condition = (flag == 6'b001100 || flag == 6'b010010 || flag == 6'b011010 || 
                                           flag == 6'b011100 || flag == 6'b100010 || flag == 6'b101010);
            2'b11: check_flag_condition = (flag == 6'b001110 || flag == 6'b011000 || flag == 6'b011101 || 
                                           flag == 6'b100100 || flag == 6'b101011 || flag == 6'b110000);
            default: check_flag_condition = 0;
        endcase
    end
endfunction

always @(posedge clk_div1) begin
    if (cnt == 7) begin
        for (i = 0; i < 4; i = i + 1) begin
            if (btn_debounced[i] && !btn_pressed[i]) begin
                if (check_flag_condition(flag, i[1:0])) begin
                    // 按對按鈕時
                    score <= score + 8'b00000001;
                    btn_pressed[i] <= 1;
                end
            end
        end
        
        // 重置按鈕狀態
        for (i = 0; i < 4; i = i + 1) begin
            if (!btn_debounced[i] && btn_pressed[i])
                btn_pressed[i] <= 0;
        end
    end
end

assign score_out = score;

always @(posedge clk_div3) begin
    if (flag == 6'b110101) begin
        if (seg == 7'b0010010) begin // S
            flag <= 6'b111000;
        end else if (seg == 7'b0001000) begin // A
            flag <= 6'b110110;
        end else if(seg == 7'b1000110 || seg == 7'b0000011)begin // B, C
            flag <= 6'b110111;
        end
    end else if (flag < 6'b110101) begin
        flag <= flag + 6'b000001;
    end
end



endmodule

module divfreq(input clk, output reg clk_div1);

reg [24:0] Count;

always @(posedge clk) begin

    if (Count >= 2500) begin

        Count <= 25'b0;

        clk_div1 <= ~clk_div1;

    end else begin

        Count <= Count + 1;

    end

end

endmodule

module divfreq2(input clk, output reg clk_div2);

reg [24:0] Count;

always @(posedge clk) begin

    if (Count >= 25000000) begin

        Count <= 25'b0;

        clk_div2 <= ~clk_div2;

    end else begin

        Count <= Count + 1;

    end

end
endmodule

module divfreq3(input clk, output reg clk_div3);

reg [24:0] Count;

always @(posedge clk) begin

    if (Count >= 15000000) begin

        Count <= 25'b0;

        clk_div3 <= ~clk_div3;

    end else begin

        Count <= Count + 1;

    end

end

endmodule


