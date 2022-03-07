%clear all;
clc;
p = 3.1416;
t1 =0.0;
t2 =0.0;


for t1=0:0.01:(2*p);   
    RR(t1,t2)
    pause(0.01)
    t1;
    if t1==2.35
        for t2=0:0.01:(3*p/4);
            RR(t1,t2)
            pause(0.01)
            t2;
        end
        for t2=(3*p/4):-0.01:0;
            RR(t1,t2)
            pause(0.01)
            t2;
        end        
        %t2=0;
    end

    
end
