
#NCNU FPGA 期末專案 github 
==

# FPGA-project
### Authors: 111321065 112321005

#### Input/Output unit:<br>
* 8x8 LED 矩陣，用來顯示掉落的音符及遊戲結果。<br>
<img src="https://github.com/TT-0x/-FPGA-project/blob/main/image/8x8.jpg" width="300"/><br>
* 玩家等級S的遊戲結果。<br>
<img src="https://github.com/TT-0x/-FPGA-project/blob/main/image/smile.jpg" width="300"/><br>
* 七段顯示器，用來顯示目前玩家等級(C->B->A->S)。<br>
<img src="https://github.com/TT-0x/-FPGA-project/blob/main/image/S.jpg" width="300"/><br>
* LED 陣列，用來計分。<br>
<img src="https://github.com/TT-0x/-FPGA-project/blob/main/image/LED.jpg" width="300"/><br>
#### 功能說明:<br>
玩家使用按鈕對應掉落的音符，如果在判斷行按下按鈕輸入即可得分，在所有音符掉落完畢後結束遊戲，根據等級給予玩家不同的通關圖案。<br>

#### 程式模組說明:<br>
module aFinalP(

    output reg [7:0] dr, dg, db, //接到8x8全彩點矩陣

    output reg [3:0] comm, //接到8x8全彩點矩陣S0~S2, En

    input clk, //使用內建PIN_22的Clock

    input [3:0] btn, // 4個按鈕輸入(S1~S4)

    output reg[7:0] seg, // 接到七段顯示器A~G
	 
	 output reg[7:0] score_out //接到LED(D1~D8)

); <br><br>
*** 請加強說明程式邏輯 <br>
#### Demo video: (請將影片放到雲端空間)
<a href="https://drive.google.com/file/d/1RoNtYn-g49q59MoznQ-JOECaN_Ku3A1C/view?usp=sharing" title="Demo Video"><img src="https://github.com/TT-0x/-FPGA-project/blob/main/image/demoVideo.jpg" alt="Demo Video" width="500"/></a>
