%clear all;
clc;
t =[0 0 0 0 0 0];
ct=0;

for t1=0:0.01:(pi/18);
    t(1)=t1;
    Bipedo_caminata_num(t,1);
    pause(0.01)
end
for t4=0:0.01:(pi/12);
    t(4)=t4;
    Bipedo_caminata_num(t,1);
    pause(0.01)
  
end
for t5=0:-0.01:(-pi/12);
%for t5=0:-0.01:(-pi/8);
    t(5)=t5;
    Bipedo_caminata_num(t,1);
    pause(0.01)
  
end

for t1=(pi/18):-0.01:-0.09;
    t(1)=t1;
    t(6)=-t1;
    O = Bipedo_caminata_num(t,1);
    pause(0.01)
    
end
q=[0 0 0 0 0 0];
j=1;
while j<=5
    %Bipedo_caminata_num(q,2,O)
    q=[-pi/18 pi/12 0 -pi/12 0 0];
    %q=[-pi/18 0 0 0 0 0];
    if j>1
        O=R;
    end
    Bipedo_caminata_num(q,2,O);


    for q2=pi/12:-0.01:(0);
        q(2)=q2;
        Bipedo_caminata_num(q,2,O);
        pause(0.01)
    end

    for q4=-pi/12:0.01:(pi/12);
        q(4)=q4;
        Bipedo_caminata_num(q,2,O);
        pause(0.01)
    end

    for q5=0:-0.01:(-pi/12);
    %for t5=0:-0.01:(-pi/8);
        q(5)=q5;
        Bipedo_caminata_num(q,2,O);
        pause(0.01)

    end

    for q1=-pi/18:0.01:0;
    %for t5=0:-0.01:(-pi/8);
        q(1)=q1;
        q(6)=-q1;
        P=Bipedo_caminata_num(q,2,O);
        pause(0.01)

    end

    k=[0 0 0 0 0 0];
    %Bipedo_caminata_num(q,2,O)
    k=[pi/18 pi/12 0 -pi/12 0 0];
    %q=[-pi/18 0 0 0 0 0];
    Bipedo_caminata_num(k,3,P);

    for k2=pi/12:-0.01:(0);
        k(2)=k2;
        Bipedo_caminata_num(k,3,P);
        pause(0.01)
    end

    for k4=-pi/12:0.01:(pi/12);
        k(4)=k4;
        Bipedo_caminata_num(k,3,P);
        pause(0.01)
    end

    for k5=0:-0.01:(-pi/12);
    %for t5=0:-0.01:(-pi/8);
        k(5)=k5;
        Bipedo_caminata_num(k,3,P);
        pause(0.01)

    end

    for k1=pi/18:-0.01:0;
    %for t5=0:-0.01:(-pi/8);
        k(1)=k1;
        k(6)=-k1;
        R=Bipedo_caminata_num(k,3,P);
        pause(0.01)

    end
    j=j+1;
 end

q=[0 0 0 0 0 0];
q=[-pi/18 pi/12 0 -pi/12 0 0];   
Bipedo_caminata_num(q,2,R);

    for q2=pi/12:-0.01:(0);
        q(2)=q2;
        Bipedo_caminata_num(q,2,R);
        pause(0.01)
    end


    for q4=-pi/12:0.01:(0);
        q(4)=q4;
        Bipedo_caminata_num(q,2,R);
        pause(0.01)
    end
    
   for q1=-pi/18:0.01:0;
    %for t5=0:-0.01:(-pi/8);
        q(1)=q1;
        q(6)=-q1;
        Bipedo_caminata_num(q,2,R);
        pause(0.01)

    end

