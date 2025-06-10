%Values of m,q,l,g
g=9.8;
m1=10;
m2=5;
l1=0.2;
l2=0.1;
syms q1 q2;
syms q1_dot q2_dot;
syms tau1 tau2;

q=[q1;q2];
q_dot = [q1_dot; q2_dot];
tau = [tau1; tau2];

%Defining M11, M22,M12,M21 for matrix M
M11 =(m1+m2)*(l1^2) + m2*l2*(l2+2*l1*cos(q2));
M12 =m2*l2*(l2+l1*cos(q2));
M21=M12;
M22 =m2*(l2^2);

%Defining G1 and G2 for matrix G
G1 = m1*l1*g*cos(q1)+m2*g*(l2*cos(q1+q2)+l1*cos(q1));
G2 = m2*g*l2*cos(q1+q2);

%Defining C11,C12,C21,C22
C11 = -m2*l1*l2*sin(q2)*q2_dot;
C12 = -m2*l1*l2*sin(q2)*(q1_dot+q2_dot);
C21 = 0;
C22 = m2*l1*l2*sin(q2)*q2_dot;

M = [M11, M12; M21, M22];
C = [C11, C12; C21, C22];
G = [G1; G2];
q_double_dot = (M^(-1))*(tau-C*q_dot-G);

q1_double_dot=q_double_dot(1);
q2_double_dot=q_double_dot(2);
% disp(q_double_dot);
%initial values
time_vec = [0 10];
q_ini=[0.1; 0.1];
qdot_ini=[0;0];
x_ini=[0;0;];

%required values
q_req = [0; 0];

[t,states] = ode45(@dynamicity, time_vec,[q_ini;qdot_ini;x_ini]);
q1 = states(:,1);
q2=states(:,2);
q1_dot = states(:,3);
q2_dot=states(:,4);
x1=states(:,5);
x2=states(:,6);

e1= abs(q_req(1)-q1);
e2=abs(q_req(2)-q2);
figure
subplot (2,2,1);
plot(t,q1);
grid on;
grid minor;
title("q_1");
xlabel("t");
ylabel("q_1(t)");
subplot (2,2,2)
plot (t,e1)
grid on;
grid minor;
title("Error in q_1");
xlabel("t");
ylabel("e_1(t)");

subplot(2,2,3)
plot(t,q2);
grid on;
grid minor;
title("q_2");
xlabel("t");
ylabel("q_2(t)");
subplot (2,2,4)
plot (t,e2);
grid on;
grid minor;
title("Error in q_2");
xlabel("t");
ylabel("e_2(t)");