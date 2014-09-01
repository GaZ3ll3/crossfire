function [ret] = next_color(h)
% next_color find next player's color

if sum(h.loss) == 3
    if h.loss(1) == 0 || h.loss(3) == 0
        ret = 'w';
        return;
    else
        ret = 'l';
        return;
    end
end

if sum(h.loss) == 2 
    if h.loss(2)*h.loss(4) == 1 
        ret = 'w';
        return;
    elseif h.loss(1)*h.loss(3) == 1
        ret = 'l';
        return;
    end
    
end


if h.player.color == 'r'
    start = 1;
elseif h.player.color == 'b'
    start = 2;
elseif h.player.color == 'g'
    start = 3;
elseif h.player.color == 'd'
    start = 4;
end


for i = 1:4
    
    ord = mod(start + i, 4);
    if ord == 0
        ord = 4;
    end
    if h.loss(ord) == 0
        break;
    end

end

if ord == 1
    ret = 'r';
elseif ord == 2
    ret = 'b';
elseif ord == 3
    ret = 'g';
elseif ord == 4
    ret = 'd';
end

end

