function i = current(t, v, r, l)

    i = ( v/r ) * ( 1 - exp((-r*t) / l) );

plot(i, t)