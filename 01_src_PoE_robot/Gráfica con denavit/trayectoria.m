%clear all;
clc;
pi = 3.1416;
t1 =0;
d1=0.4;

for t1=1:6.283185;   
    q=[t1,0,0,0];
    q=q';
    drawrobot3d4(q)
    pause(0.1)
   
    
end

for d1=0:-0.1:-0.4;
   
  q=[t1,d1,0,0];
q=q';
drawrobot3d4(q)
pause(1)
   
    
end