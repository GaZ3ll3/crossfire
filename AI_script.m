function [res, frompos, topos] = AI_script(color, own_pieces, database, h)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

res = 1;
% disp(color);
if color == 'r'

    moves = avail_move('r', h);
    
    if isempty(moves)
        res = 0;
        frompos = -1;
        topos = -1;
        return;
    end
    
    
    ind = randi(size(moves,1));
    
    frompos = moves(ind, 1);
    topos = moves(ind, 2);
    
    

end

if color == 'b'

    moves = avail_move('b', h);
    if isempty(moves)
        res = 0;
        frompos = -1;
        topos = -1;
        return;
    end
    ind = randi(size(moves,1));
    
    frompos = moves(ind, 1);
    topos = moves(ind, 2);

end

if color == 'g'

    moves = avail_move('g', h);
    if isempty(moves)
        res = 0;
        frompos = -1;
        topos = -1;
        return;
    end
        ind = randi(size(moves,1));
    
    frompos = moves(ind, 1);
    topos = moves(ind, 2);
    

end

if color == 'd'

    moves = avail_move('d', h);
    if isempty(moves)
        res = 0;
        frompos = -1;
        topos = -1;
        return;
    end
    ind = randi(size(moves,1));
    
    frompos = moves(ind, 1);
    topos = moves(ind, 2);

end


end


function [ret] = avail_move(color, h)
    ret = [];
    rows = 0;
    if color == 'r'
        pstart = 0;
    elseif color == 'b'
        pstart = 25;
    elseif color == 'g'
        pstart = 50;
    elseif color == 'd'
        pstart = 75;
    end
    
    % search available moves for each player.
    % this should be in each player's AI script
    
    for i = 1:25
        pos = h.piece(pstart + i);
        if pos == -1 || i == 25 || i == 24 || i == 23 || i == 22 || (pos < 121 && mod(pos - 1, 30) + 1 == 2) || (pos < 121 && mod(pos - 1, 30) + 1 == 4)
            continue;
        end
        temp = find(h.alladj(pos,:));
        for j = 1:size(temp, 2)
            if temp(j) ~= pos && ~isallies(pos, temp(j), h) 
                rows = rows + 1;
                ret(rows, 1) = pos;
                ret(rows, 2) = temp(j);
            end
        end
    end
    
end


function [ret] = isallies(pos1, pos2, h)
    ret = 0;
    if floor((h.pos(pos1) - 1)/25) == floor((h.pos(pos2) - 1)/25)
        ret = 1;
    elseif abs(floor((h.pos(pos1) - 1)/25) - floor((h.pos(pos2) - 1)/25)) == 2 && floor((h.pos(pos2) - 1)/25) ~= -1
        ret = 1;
    end
    
end
 
function [check] = can_move(pos1, pos2)
check = 0;
end





