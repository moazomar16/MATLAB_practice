x = [10 14 14 16  16 20 20 10 10]
y = [10 10 5  5   10 10 30 30 10]

hold on;
plot(x,y)
fill(x,y,'black');
i=0

theta = linspace(0,2*pi);
x1 = 2*cos(theta)+15;
y1 = 2*sin(theta)+25;
hold on;
plot(x1,y1)


theta = linspace(0,2*pi);
x2 = 2*cos(theta)+15;
y2 = 2*sin(theta)+20;
hold on;
plot(x2,y2)

theta = linspace(0,2*pi);
x3 = 2*cos(theta)+15;
y3 = 2*sin(theta)+15;
hold on;
plot(x3,y3)

xlim([0 40])
ylim([0 40])

while(1)

    fill(x3,y3,'black')
    fill(x1,y1,'red')
    pause(1)
    fill(x1,y1,'black')
    fill(x2,y2,'yellow')
    pause(1)
    fill(x2,y2,'black')
    fill(x3,y3,'green')
    pause(1)

end