load('power.mat');
Time=power(1,:);
bat=power(2,:);
fc=power(3,:);
pv=power(4,:);
motor=power(5,:);
pv_s=power(6,:);
fc_s=power(7,:);
m=2;

d=5500;%step
c=(length(Time));
v=(c-rem(c,d))/d+1;% number of points in drawn
b=v+1;
    bat_ponits=zeros(1,v);
    fc_ponits=zeros(1,v);
    pv_ponits=zeros(1,v);
    motor_ponits=zeros(1,v);
    pv_s_ponits=zeros(1,v);
    fc_s_ponits=zeros(1,v);
    Time_ponits=zeros(1,v);
     bat_ponits(1,1)=0;
    fc_ponits(1,1)=0;
    pv_ponits(1,1)=0;
    motor_ponits(1,1)=0;
    pv_s_ponits(1,1)=0;
    fc_s_ponits(1,1)=0;
    Time_ponits(1,1)=0;
for n1=1 :d : c-rem(c,d)
   
    bat_ponits(1,m)=sum(bat(1,n1:n1+d))/d;
    fc_ponits(1,m)=sum(fc(1,n1:n1+d))/d;
    pv_ponits(1,m)=sum(pv(1,n1:n1+d))/d;
    motor_ponits(1,m)=sum(motor(1,n1:n1+d))/d;
    pv_s_ponits(1,m)=sum(pv_s(1,n1:n1+d))/d;
    fc_s_ponits(1,m)=sum(fc_s(1,n1:n1+d))/d;
    Time_ponits(1,m)=m*((Time(1,end)))/b;    
    m=m+1;
end
plot(Time_ponits(1,:),bat_ponits(1,:),'yellow',Time_ponits(1,:),fc_ponits(1,:),'blue',Time_ponits(1,:),pv_ponits(1,:),'red',Time_ponits(1,:),motor_ponits(1,:),'green');
%plot(Time_ponits(1,:),motor_ponits(1,:),'red');
grid on;
