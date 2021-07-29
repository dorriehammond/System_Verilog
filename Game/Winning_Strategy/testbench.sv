//A magical day in the life of remote learning! Your goal is to work up enough motivation to finish all of your homework!  Replace every x in lines 25-39 with 0 or 1.  Then Run to read your story!
//Written Dorrie Hammond, inspired by Jed Brody's game https://www.edaplayground.com/x/5C7z
module test;
  logic clk;
  logic reset;
  logic [1:0] Decision;
  logic [4:0] state;
  logic y;

  Game U(.clk(clk), .reset(reset), .Decision(Decision),.state(state));
initial begin
  $display("Your alarm starts to go off. It's 9:30am, and you slept about 4-5 hours last night, so you're ready for another day of your remote Fall 2020 semester.");  
  $display("You have 7 new spam emails, a class starting soon, very noisy parents in the kitchen, 6 homework assignments that are due, and zero motivation.");  
  $display("Your goal is to work up enough motivation to complete all of your schoolwork.");
  $display("");
    //$dumpfile("dump.vcd");
    //$dumpvars(1,test);//saves data   
	reset=0;
  	clk=0;
  	#2 reset=1;
  	#2 reset=0;
  //Replace every x with 0 or 1
  //Then Run to read your story!
  //For Decision Options: 00=A 01=B 10=C 11=D
  	// Take a shower
  	Decision=2'b01; #2
  	// Eat/drink water
  	Decision=2'b10; #2
    Decision=2'b10; #2
  	// Go to bedroom
  	Decision=2'b00; #2
  	Decision=2'b00; #2
  	// Get dressed
  	Decision=2'b10; #2
  	Decision=2'b10; #2
  	// Leave bedroom
  	Decision=2'b11; #2
  	// Go outside
  	Decision=2'b11; #2
  	Decision=2'b11; #2
  	// Go to bedroom
  	Decision=2'b00; #2
  	// Take a nap
  	Decision=2'b01; #2
  	Decision=2'b01; #2
  	// Go to desk
  	Decision=2'b00; #2
  	// Pick up phone
  	Decision=2'b01; #2
    Decision=2'b01; #2
  	// Talk to friends
  	Decision=2'b01; #2
  	// Put down phone
  	Decision=2'b11; #2
  	// Open laptop
  	Decision=2'b10; #2
  	Decision=2'b10; #2
  	// Go to class
  	Decision=2'b00; #2
  	Decision=2'b00; #2
  	// Watch videos
  	Decision=2'b01; #2
  	Decision=2'b01; #2
  	// Close laptop
  	Decision=2'b11; #2
  	Decision=2'b11; #2
  	// Do Homework
  	Decision=2'b00; #2
  	Decision=2'b00; #2
  	$finish;
end  
always #1 clk=~clk;
always@(posedge clk)
  case(state)
    1:begin
      $display("Where should you go?");
      $display("A) Go to your bedroom");  
      $display("B) Go to the bathroom");  
      $display("C) Go to the kitchen");
      $display("D) Go outside");
      $display("");
    end
    2:begin
      $display("You're in your bedroom, what should you do?");
      $display("A) Go to your desk");  
      $display("B) Take a nap");  
      $display("C) Get dressed");
      $display("D) Leave bedroom");
      $display("");
    end
    3:begin
      $display("You go to the bathroom, and decide to take a shower because you haven't bathed in three days. You contemplate life and have a staring contest with the spider on your ceiling.");
      $display("You feel guilty for not working on homework yet, but you feel a little more motivated. Plus 1 motivation!");
      $display("");
    end
    4:begin
      $display("You go to the kitchen. You decide to drink water and eat some leftovers. You yearn for the days of quarantine when you had time to make sourdough bread.");
      $display("Your parents ask if you've started working on homework yet, and the stress makes you feel a little more motivated. Plus 1 motivation!");
      $display("");
    end
    5:begin
      $display("The sun is shining and the birds are singing. You enjoy the little time you have not staring at a screen.");
      $display("By the time you get back home, it starts to rain. Looks like you won't be going outside again today.");
      $display("Your walk in the fresh air motivates you a little more. Plus 1 motivation!");
      $display("");
    end
    6:begin
      $display("You're at your desk, what should you do?");
      $display("A) Do homework");  
      $display("B) Pick up your phone");  
      $display("C) Open your laptop");
      $display("D) Leave desk");
      $display("");
    end
    7:begin
      $display("You lay down to take a 30-minute nap. You wake up and it is 3 hours later. You probably shouldn't nap again today.");
      $display("This motivates you a little to get started on homework. Plus 1 motivation!");
      $display("");
    end
    8:begin
      $display("You change out of the sweatpants you've been wearing for two days and put on a clean pair. You ignore your growing dirty pile of laundry.");
      $display("You check your pocket and find a face mask!");
      $display("");
    end
    9:begin
      $display("Successful ;-)");
      $display("Wow! It looks like you worked up the motivation to complete all you homework, Congrats!");
      $display("You must've worked really hard! Please make sure to take care of yourself and and rest for a bit.");
      $display("Maybe now you can finally enjoy some freetime- oh, look at the time, it's 3:00am already. I guess you should go to sleep, so that you can be just as productive tomorrow");
      $display("");
    end
    10:begin
      $display("Unsuccessful :'(");
      $display("You attempted to do all your homework without building up enough motivation first.");
      $display("You got about halfway through your work, gave up for the day, and went to bed stressed.");
      $display("That's okay. Students are going through a really tough time right now, so you have to remember to be kind to yourself.");
      $display("You are doing everything you can, even if you aren't always the most productive!");
      $display("");
    end
    11:begin
      $display("You're on your phone, what should you do?");
      $display("A) Scroll through social media");  
      $display("B) Talk to your friends");  
      $display("C) Check your email");
      $display("D) Put down your phone");
      $display("");
    end
    12:begin
      $display("You're on your laptop, what should you do?");
      $display("A) Attend synchronous lecture");  
      $display("B) Watch some fun videos");  
      $display("C) Check canvas");
      $display("D) Close laptop");
      $display("");
    end
    13:begin
      $display("Unsuccessful :'(");
      $display("You see the news and immediately start scrolling through memes to distract yourself from the world. You lose track of time.");
      $display("By the time you look up, it's already midnight and you haven't done any homework.  You decide to go to bed and leave it for tomorrow.");
      $display("");
    end
    14:begin
      $display("You vent with your friends about school and life. It's relieving to know the outside world still exists.");
      $display("They are all really busy, so you won't be able to talk again today.");
      $display("The much-needed social interaction motivates you. Plus 1 motivation!");
      $display("");
    end
    15:begin $display("You check Outlook. Looks like you've recieved another email from the bookstore and an email from your major department asking you to fill out a survey on how your semester is going.");
      $display("You have 314 unread emails. You close Outlook");
      $display("");
    end
    16: begin $display("You've done this already. Find another way to procrastinate.");
      $display("");
    end
    17:begin
      $display("You log onto zoom for your class instead of skipping for once. You must have great willpower!");
      $display("For once, you feel engaged in your schoolwork, and you got to see a classmate's cat.");
      $display("The cat instills more motivation in you. Plus 1 motivation!");
      $display("");
    end
    18:begin
      $display("You take a break and watch some fun videos. You wonder how much they make off adsense.");
      $display("The videos give you more motivation. Plus 1 motivation!");
      $display("");
    end
    19:begin $display("You check Canvas. Looks like one of your professors has posted a new assignment that's due in 3 days, even though at the beginning of the semester they promised they'd give the class at least a week to work on homework.");
      $display("That's a problem for tomorrow. You close Outlook");
      $display("");
    end
    20:begin $display("You want to go outside, but decide not to because you feel like you're forgetting something.");
      $display("Maybe you'll go for a walk later.");
      $display("");
    end
    21:$write("");
    
  endcase
  endmodule

