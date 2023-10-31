function [rez, n] = BisectionM(a, b, e)
    a1 = a;
    b1 = b;
    m1 = (a + b)/2;
    n = 1;
    d =(1/2^(n-1)*(b-2))

    while(d>e)
        if f(a1)*f(m1)<0
            b1 = m1;
        else 
            a1 = m1;
        end

        n = n + 1;
        d = d/2;
        m1 = (a1 + b1)/2;
    end
    rez = m1;