function regular = Jacobinv(q)

syms t1 t2 t3 t4

t1 = q(1);
t2 = q(2);
t3 = q(3);
t4 = q(4);

regular = [ - 28*sin(t1) - 13*cos(t1)*sin(t2) - 13*cos(t2)*sin(t1) - 3*cos(t3)*(cos(t1)*sin(t2) + cos(t2)*sin(t1)) - 3*sin(t3)*(cos(t1)*cos(t2) - sin(t1)*sin(t2)), - 13*cos(t1)*sin(t2) - 13*cos(t2)*sin(t1) - 3*cos(t3)*(cos(t1)*sin(t2) + cos(t2)*sin(t1)) - 3*sin(t3)*(cos(t1)*cos(t2) - sin(t1)*sin(t2)), - 3*cos(t3)*(cos(t1)*sin(t2) + cos(t2)*sin(t1)) - 3*sin(t3)*(cos(t1)*cos(t2) - sin(t1)*sin(t2)), 0;
   28*cos(t1) + 13*cos(t1)*cos(t2) - 13*sin(t1)*sin(t2) + 3*cos(t3)*(cos(t1)*cos(t2) - sin(t1)*sin(t2)) - 3*sin(t3)*(cos(t1)*sin(t2) + cos(t2)*sin(t1)),   13*cos(t1)*cos(t2) - 13*sin(t1)*sin(t2) + 3*cos(t3)*(cos(t1)*cos(t2) - sin(t1)*sin(t2)) - 3*sin(t3)*(cos(t1)*sin(t2) + cos(t2)*sin(t1)),   3*cos(t3)*(cos(t1)*cos(t2) - sin(t1)*sin(t2)) - 3*sin(t3)*(cos(t1)*sin(t2) + cos(t2)*sin(t1)), 0;
                                                                                                                                                     0,                                                                                                                                         0,                                                                                               0, 0;
                                                                                                                                                      0,                                                                                                                                         0,                                                                                               0, 0];
 
%This is the regular jacobian
%We will then evaluate the pseudo inverse of the Jacobian by using the
%funciton pinv in the IK file
end