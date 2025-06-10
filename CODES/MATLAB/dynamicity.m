function derX_derT = dynamicity (t,states)
q1=states(1);
q2=states(2);
q1_dot=states(3);
q2_dot=states(4);
x1=states(5);
x2=states(6);

kp1=500;
kd1=150;
ki1=500;
kp2=500;
kd2=150;
ki2=500;

q_desired = [0;0];
e1 = q_desired(1) - q1;
e2 = q_desired(2) - q2;

f1 = kp1*e1 + ki1*x1 - kd1*q1_dot;
f2 = kp2*e2 + ki2*x2 - kd2*q2_dot;
F = [f1; f2];

m1 = 10; m2 = 5;
l1 = 0.2; l2 = 0.1;

M11 = (m1+m2)*(l1^2) + m2*l2*(l2+2*l1*cos(q2));
M12 = m2*l2*(l1+l2*cos(q2));
M22 = m2*(l2^2);
M = [M11, M12; M12, M22];

tau = M*F;
tau1 = tau(1);
tau2 = tau(2);

derX_derT = zeros(size(states));
derX_derT(1) = q1_dot;
derX_derT(2) = q2_dot;
derX_derT(3) = -(5*(tau1 - (981*cos(q1 + q2))/200 - (2943*cos(q1))/100 + (q1_dot*q2_dot*sin(q2))/10 + (q2_dot^2*sin(q2)*(q1 + q2))/10))/(cos(q2)^2 - 3) - (5*(2*cos(q2) + 1)*((sin(q2)*q2_dot^2)/10-tau2 + (981*cos(q1 + q2))/200))/(cos(q2)^2 - 3);
derX_derT(4) = (5*(2*cos(q2) + 1)*(tau1 - (981*cos(q1 + q2))/200 - (2943*cos(q1))/100 + (q1_dot*q2_dot*sin(q2))/10+ (q2_dot*sin(q2)*(q1_dot + q2_dot))/10))/(cos(q2)^2 - 3) + (5*(4*cos(q2) + 13)*((sin(q2)*q2_dot^2)/10- tau2 + (981*cos(q1 + q2))/200))/(cos(q2)^2 - 3);
derX_derT(5) = q_desired(1) - q1;
derX_derT(6) = q_desired(2) - q2;
end