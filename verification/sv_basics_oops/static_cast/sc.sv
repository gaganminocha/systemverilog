// SV - Static Cast
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//



module tb;
    
    real r;
    int i, r2i;
        
    initial
    begin
        r = 2.7;
        i = 5;
        $display("real: %0f, int: %0d",r, i );
        
        
        //Real to Int
        r2i = int'(r);
        $display("real to int of %0f: %0d",r, r2i );
    end

endmodule
