function  [h] = simulate(frompos, topos, hObj)

h = guidata(hObj);




if (h.pos(frompos) ~= -1)
    [side1, X1, Y1] = pos2pos(frompos);
    if frompos > 120
        callback1 = get(h.(side1), 'Callback');
        callback1(hObj, []);
    elseif frompos <= 120
        callback1 = get(h.(strcat(side1, strcat(int2str(X1), int2str(Y1)))), 'Callback');
        callback1(hObj, []);
    end
    
    [side2, X2, Y2] = pos2pos(topos);
    if topos > 120
        callback2 = get(h.(side2), 'Callback');
        callback2(hObj, []);
    elseif topos <= 120
        callback2 = get(h.(strcat(side2, strcat(int2str(X2), int2str(Y2)))), 'Callback');
        callback2(hObj, []);
    end
else
    error('wrong click');

end



h = guidata(hObj);
end

function [side, X, Y] = pos2pos(frompos)

if frompos > 120
    X = 0; Y = 0;
    if frompos == 129
        side = 'O'; 
    elseif frompos == 128
        side = 'OD';
    elseif frompos == 127
        side = 'OC';
    elseif frompos == 126
        side = 'OB';
    elseif frompos == 125
        side = 'OA';
    elseif frompos == 124
        side = 'DA';
    elseif frompos == 123
        side = 'CD';
    elseif frompos == 122
        side = 'BC';
    elseif frompos == 121
        side = 'AB';
    end
    
    
elseif frompos <= 120
    
    mode = floor((frompos - 1)/30);
    if mode == 0
        side = 'A';
    elseif mode == 1
        side = 'B';
    elseif mode == 2
        side = 'C';
    elseif mode == 3
        side = 'D';
    end
    
    res = mod(frompos - 1, 30) + 1;
    
    X = floor((res - 1)/5) + 1;
    Y = mod(res - 1, 5) + 1;
    
end

end