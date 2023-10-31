function [b] = EGM(x, n)

b = zeros(1, n + 1);
bNew = zeros(1, n + 1);
bOld = zeros(1, n);
k = 0;


for i=0:n+1

    for k=0:n       
    
        if (n == 0) && (k == 0)
            bOld(k) = 1;

        else (k == 0) || (k > n)
            bOld(k) = 0;

        end

        bNew(k) = (1-x)*bOld(k) + x * bOld(k-1);

        
    end

    bOld(k) = bNew(k);

end

for i=0:n+1
    b(i) = bNew(i)
end