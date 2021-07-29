module EscapeRoom(input logic clk, input logic reset, input logic [1:0] answer, output logic [3:0] prevState, output logic [3:0] state);
  logic [3:0] nextstate;
  
  always @(posedge clk)
     if (reset) state <= 0;
     else state <= nextstate;
  
  always @(*)
    case(state)
      0: begin
        prevState = 0;
        if (answer == 1) nextstate = 1;
      	else nextstate = 8;
      end
      1: begin
        prevState = 1;
        if (answer == 0) nextstate = 2;
      	else nextstate = 8;
      end
      2: begin
        prevState = 2;
        if (answer == 1) nextstate = 3;
      	else nextstate = 8;
      end
      3: begin
        prevState = 3;
        if (answer == 1) nextstate = 4;
      	else nextstate = 8;
      end
      4: begin
        prevState = 4;
        if (answer == 0) nextstate = 5;
      	else nextstate = 8;
      end
      5: begin
        if (answer == 0) 
          nextstate = 6;
        else if (answer == 1) 
          nextstate = 7;
      end
    endcase        
endmodule
