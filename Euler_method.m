file1 = fopen("C:\Users\fanta\Desktop\Cauchy\Cauchy_problem\Cauchy_problem\x_Cauchy.txt",'r');
file2 = fopen("C:\Users\fanta\Desktop\Cauchy\Cauchy_problem\Cauchy_problem\y_Cauchy.txt",'r');
% file3 = fopen("C:\Users\fanta\Desktop\Cauchy\Cauchy_problem\Cauchy_problem\y1_Cauchy.txt",'r');
formatSpes='%f';
x = fscanf(file1,formatSpec);
y = fscanf(file2,formatSpec);
% y1 = fscanf(file3,formatSpec);
xx = [0 5];
y0 = 1;
[x1,y1] = ode23(@(x1,y1) 5*y1*cos(5*x1), xx, y0);
plot(x,y,'b');
hold on;
plot(x1,y1,'-o');
% plot(x,y1,'r');
[legend_axes,legend_objects] = legend('numerical','exact'); 
grid;
figure,
plot(x,abs(y-transpose(y1)));

