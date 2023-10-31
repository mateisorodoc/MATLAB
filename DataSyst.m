function [A, b, exact] = DataSyst
global typeex

switch typeex
    case 'ex1'
        A = [3, 0, 0;
             1, 2, 0; 
             3, 2, 1];

        b = [3, 3, 6];

        exact = [1, 1, 1];

    case 'ex2'
        A = [-1, 2, 2;
             0, 1, -1; 
             0, 0, 3];

        b = [3, 0, 3];

        exact = [1, 1, 1];

    case 'ex3'
        A = [-1, 1, 2; 3, 2, 1; 1, 0, 1];
        b = [2, 6, 2];
        exact = [1, 1, 1];
end