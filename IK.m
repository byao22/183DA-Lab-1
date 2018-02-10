function q = IK(q0,Xd,N)
    x0=Lab1(q0);
    dx=(Xd-x0)./N;
    while norm(dx)> 0.01
        h = pinv(Jacobinv(q0));
        dq = h*dx;
        q0 = q0 + dq;
        x0 = Lab1(q0);
        dx = (Xd-x0)./N;
    end
    q=q0;
end