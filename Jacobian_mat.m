syms t1 t2 t3 t4

DH = [0, 0, 0, t1; 28, 0, 5, t2; 13, 0, 3, t3; 3, 0, 0, t4];
%DH = [0, 0, 0, 0; 1, 0, 1, 0; 1, 0, 1, 0; 1, 0, 0, 0];

T1 = [cos(DH(1,4)),-sin(DH(1,4)),0,0;sin(DH(1,4)),cos(DH(1,4)),0,0;0,0,1,0;0,0,0,1];

Dx1 = [1,0,0,DH(2,1);0,1,0,0;0,0,1,0;0,0,0,1];
Rz1 = [cos(DH(2,4)),-sin(DH(2,4)),0,0;sin(DH(2,4)),cos(DH(2,4)),0,0;0,0,1,0;0,0,0,1];
Dz1 = [1,0,0,0;0,1,0,0;0,0,1,DH(2,3);0,0,0,1];

T2 = Dx1*Rz1*Dz1;

Dx2 = [1,0,0,DH(3,1);0,1,0,0;0,0,1,0;0,0,0,1];
Rz2 = [cos(DH(3,4)),-sin(DH(3,4)),0,0;sin(DH(3,4)),cos(DH(3,4)),0,0;0,0,1,0;0,0,0,1];
Dz2 = [1,0,0,0;0,1,0,0;0,0,1,DH(3,3);0,0,0,1];

T3 = Dx2*Rz2*Dz2;

Dx3 = [1,0,0,DH(4,1);0,1,0,0;0,0,1,0;0,0,0,1];
Rz3 = [cos(DH(4,4)),-sin(DH(4,4)),0,0;sin(DH(4,4)),cos(DH(4,4)),0,0;0,0,1,0;0,0,0,1];

T4 = Dx3*Rz3;

T0 = T1*T2*T3*T4;

%transformation matrix of end effector 
T5 = T0*[0;0;0;1];

%Px = T5(1);
%Py = T5(2);
%Pz = T5(3);

%Jacobian = [diff(Px,t1), diff(Px,t2), diff(Px,t3), diff(Px,t4); diff(Py,t1), diff(Py,t2), diff(Py,t3), diff(Py,t4);diff(Pz,t1), diff(Pz,t2), diff(Pz,t3), diff(Pz,t4)];
%display(Jacobian),
%Jacobinv = (Jacobian.'*Jacobian)*Jacobian.';
%Jacobinv = pinv(Jacobian)
%display(Jacobinv)

jack = jacobian(T5,[t1,t2,t3,t4])


