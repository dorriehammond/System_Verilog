module Game(input logic clk, input logic reset, input logic [1:0] Decision, output logic [4:0] state);

  logic  [4:0] nextstate;
  logic  [4:0] laststate;
  logic  [4:0] motivation;
  logic Mask;
  logic IsRaining;
  logic IsFull;
  logic IsDressed;
  logic HasNapped;
  logic HasShowered;
  logic NoMoreVideos;
  logic NoMoreClass;
  logic FriendsBusy;

   // State Register
   always @(posedge clk)
     if (reset) begin
       state <= 1;
       motivation<=0;
       Mask<=0;
       IsRaining<=0;
       IsFull<=0;
       IsDressed<=0;
       HasNapped<=0;
       HasShowered<=0;
       NoMoreVideos<=0;
       NoMoreClass<=0;
       FriendsBusy<=0;
     end
      else       state <= nextstate;

   // Next State Logic
   always @(*)
      case (state) 
        1:begin
          if (Decision==0) nextstate=2;
          else if ((Decision==1)&(HasShowered==0)) nextstate=3;
          else if ((Decision==2)&(IsFull==0)) nextstate=4;
          else if ((Decision==3)&(IsRaining==0)&(Mask==1)) nextstate=5;
          else if ((Decision==3)&(Mask==0)) nextstate=20;
          else nextstate=16;
            laststate=1;
        end
        
        2: begin
          if (Decision==0) nextstate=6;
          else if ((Decision==1)&(HasNapped==0)) nextstate=7;
          else if ((Decision==2)&(IsDressed==0)) nextstate=8;
          else if (Decision==3) nextstate=1;
        else nextstate=16;
          laststate=2;
        end
        
        3:begin
          motivation++;
          HasShowered=1;
          nextstate=1;
        end
        
        4:begin
          motivation++;
          IsFull=1;
          nextstate=1;
        end
        
        5:begin
          motivation++;
          IsRaining=1;
          nextstate=1;
        end
        
        6: if ((Decision==0)&(motivation>4)) nextstate=9;
        else if (Decision==0) nextstate=10;
        else if (Decision==1) nextstate=11;
        else if (Decision==2) nextstate=12;
        else nextstate=2;

        
        7:begin 
          motivation++;
          HasNapped=1;
          nextstate=2;
        end
        
        8:begin
          Mask=1;
          IsDressed=1;
          nextstate=2;
        end
        
        9: nextstate=21;
        
        10: nextstate=21;
        
        11: begin
          if (Decision==0) nextstate=13;
          else if ((Decision==1)&(FriendsBusy==0)) nextstate=14;
          else if (Decision==2) nextstate=15;
          else if (Decision==3) nextstate=6;
          else nextstate=16;
            laststate=11;
        end
        
        12: begin
          if ((Decision==0)&(NoMoreClass==0)) nextstate=17;
          else if ((Decision==1)&(NoMoreVideos==0)) nextstate=18;
          else if (Decision==2) nextstate=19;
          else if (Decision==3) nextstate=6;
          else nextstate=16;
           laststate=12;
        end
        
        13: nextstate=21;
        
        14:begin
          motivation++;
          FriendsBusy=1;
          nextstate=11;
        end
        
        15: nextstate=11;
        
        16: nextstate=laststate;
        
        17: begin
          motivation++;
          NoMoreClass=1;
          nextstate=12;
        end
        
        18: begin
          motivation++;
          NoMoreVideos=1;
          nextstate=12;
        end
        
        19: nextstate=12;
        
        20: nextstate=1;
      endcase
endmodule