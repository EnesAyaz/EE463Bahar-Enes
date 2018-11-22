% Rip is wanted ripple value in percentange
% y is a capacitance value that provides that ripple
% R is a resistance value
function y= CapacitenceCalculator(Rip,R)

% Full wave rectifier 

% wt= linspace(0,10*pi,10000);
% 
% LoadVoltage= sin(wt); %% it is output voltage for fully resistance load

MaxPoint= pi/2;

if Rip==100
    y=0;
    
else
    Rip=Rip/100;
    MinPoint=asin((1-Rip));
end

Delta=MaxPoint-MinPoint;
DeltaTime= Delta/(2*pi*50);

y= -DeltaTime/( log((1-Rip))*R); %% apply exponential to determine capacitance

end
