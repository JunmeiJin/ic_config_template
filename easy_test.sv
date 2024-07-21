/**************************

    Filename  : easy_test.sv
    Author    : ICer
    Description : Verfication coding file
    Creat Time  : 2023-12-07 15:14:44
    Lst Modify Time :2023-12-07 15:14:44

**************************/
`ifndef EASY_TEST__SV
`define EASY_TEST__SV

module easy_test;
    bit signed [21:0] num1;
    bit signed [21:0] num2;
    bit signed [21:0] tmp;
    initial begin
        num1 = 0;
        num2 = 0;
        num1 = num1 - 'h2a1b;
        num2 = num2 - 'h2b9f;
        $display("first buckle barrel");
        $display("num1 is %0d",num1);
        $display("num1 is %0h",num1);
        $display("num2 is %0d",num2);
        $display("num2 is %0h\n",num2);
        
        num1 = num1 - 'h2887;
        $display("second buckle barrel");
        $display("num1 is %0d",num1);
        $display("num1 is %0h\n",num1);

        tmp = ~num1 + 1; 
        $display("evalute max deficit");
        $display("tmp is %0d",tmp);
        $display("tmp is %0h\n",tmp);
        
        tmp = tmp >>10;
        $display("evalute refill");
        $display("tmp is %0d",tmp);
        
        tmp = 15;
        tmp = tmp << 10;
        $display("tmp is %0d\n",tmp);
        
        num1 = num1 + tmp*7;
        num2 = num2 + tmp*3;
        $display("after add barrier");
        $display("num1 is %0b",num1);
        $display("num1 is %0d",num1);
        $display("num1 is %0h\n",num1);
        $display("num2 is %0b",num2);
        $display("num2 is %0d",num2);
        $display("num2 is %0h\n",num2);
    end

endmodule
`endif
