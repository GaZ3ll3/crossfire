function  [h] = simulate(side1, X1, Y1, side2, X2,Y2, h, hObj)

callback1 = get(h.(strcat(side1, strcat(int2str(X1), int2str(Y1)))), 'Callback');
callback1(hObj, []);

callback2 = get(h.(strcat(side2, strcat(int2str(X2), int2str(Y2)))), 'Callback');
callback2(hObj, []);

end

