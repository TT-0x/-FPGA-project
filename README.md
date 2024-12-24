
#NCNU FPGA 期末專案 github 
==

# FPGA-project
### Authors: 111321065 112321005

#### Input/Output unit:<br>
* 8x8 LED 矩陣，用來顯示掉落的音符及遊戲結果。<br>
<img src="https://github.com/kamiry/FPGA-project-1/blob/master/images/IO1.jpg" width="300"/><br>
* 七段顯示器，用來顯示目前玩家等級(C->B->A->S)。<br>
<img src="https://github.com/kamiry/FPGA-project-1/blob/master/images/IO2.jpg" width="300"/><br>
* LED 陣列，用來計分。<br>
<img src="https://github.com/kamiry/FPGA-project-1/blob/master/images/IO3.jpg" width="300"/><br>
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
*
每個按鈕有對應不同的8*8圖案，每個圖案對應不同的flag，透過判斷式將這些對應的圖案加入對應的按鈕判斷式中，當玩家有正確按下對應的按鈕，score會+1，若是沒有按下對應的按鈕，score不會變動，並且每四次按鈕的狀態會歸零，以防止在四次之內出現相同圖案，score會無法正常增加，


#### Demo video: (請將影片放到雲端空間)
<a href="https://drive.google.com/file/d/1dsUKFF945moWpXyD0L86eseNf1l3repO/view?usp=sharing" title="Demo Video"><img src="https://github.com/kamiry/FPGA-project-1/blob/master/images/IO4.jpg" alt="Demo Video" width="500"/></a>
