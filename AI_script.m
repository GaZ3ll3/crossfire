function [res, frompos, topos] = AI_script(color, own_pieces, database, h)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

res = 1;
% disp(color);


nothreat = find_threat(h);

if color == 'r'

    moves = avail_move('r', h);
    
    if isempty(moves)
        res = 0;
        frompos = -1;
        topos = -1;
        return;
    end
    
    
    
    if (nothreat(1))
        ind = randi(size(moves,1));
        frompos = moves(ind, 1);
        topos = moves(ind, 2);        
    
    else 
        admissible = find(h.piece(25) + 5 == moves(:,2));
        if isempty(admissible)
            ind = randi(size(moves,1));
            frompos = moves(ind, 1);
            topos = moves(ind, 2);  
        else
            frompos = moves(admissible(1), 1);
            topos = moves(admissible(1), 2);
        end
    
        
    end
    
    

end

if color == 'b'

    moves = avail_move('b', h);
    if isempty(moves)
        res = 0;
        frompos = -1;
        topos = -1;
        return;
    end
    
    
    if (nothreat(2))
        ind = randi(size(moves,1));
        frompos = moves(ind, 1);
        topos = moves(ind, 2);        
    
    else 
        admissible = find(h.piece(50) + 5== moves(:,2));
        if isempty(admissible)
            ind = randi(size(moves,1));
            frompos = moves(ind, 1);
            topos = moves(ind, 2);  
        else
            frompos = moves(admissible(1), 1);
            topos = moves(admissible(1), 2);
        end
    
        
    end

end

if color == 'g'

    moves = avail_move('g', h);
    if isempty(moves)
        res = 0;
        frompos = -1;
        topos = -1;
        return;
    end
    
    if (nothreat(3))
        ind = randi(size(moves,1));
        frompos = moves(ind, 1);
        topos = moves(ind, 2);        
    
    else 
        admissible = find(h.piece(75) + 5==moves(:,2));
        if isempty(admissible)
            ind = randi(size(moves,1));
            frompos = moves(ind, 1);
            topos = moves(ind, 2);  
        else
            frompos = moves(admissible(1), 1);
            topos = moves(admissible(1), 2);
        end
    
        
    end
    

end

if color == 'd'

    moves = avail_move('d', h);
    if isempty(moves)
        res = 0;
        frompos = -1;
        topos = -1;
        return;
    end
    
    if (nothreat(4))
        ind = randi(size(moves,1));
        frompos = moves(ind, 1);
        topos = moves(ind, 2);        
    
    else 
        admissible = find(h.piece(100) + 5==moves(:,2));
        if isempty(admissible)
            ind = randi(size(moves,1));
            frompos = moves(ind, 1);
            topos = moves(ind, 2);  
        else
            frompos = moves(admissible(1), 1);
            topos = moves(admissible(1), 2);
        end
    
        
    end

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
        

        if ismember(pos, h.rail)
            temp = union(find(h.alladj(pos,:)), rail_go_from(pos, h));
        else
            temp = find(h.alladj(pos,:));
        end
        
        for j = 1:size(temp, 2)
            if temp(j) ~= pos && ~isallies(pos, temp(j), h) && ((iscamp(temp(j)) && ...
                    h.pos(temp(j)) == -1) || (~iscamp(temp(j)))) && ((isbase(temp(j)) && ...
                    h.pos(temp(j)) ~= -1) || (~isbase(temp(j))))
                rows = rows + 1;
                ret(rows, 1) = pos;
                ret(rows, 2) = temp(j);
            end
        end
        
    end
    return;
    
end


function [ret] = isallies(pos1, pos2, h)
    ret = 0;
    if floor((h.pos(pos1) - 1)/25) == floor((h.pos(pos2) - 1)/25)
        ret = 1;
    elseif abs(floor((h.pos(pos1) - 1)/25) - floor((h.pos(pos2) - 1)/25)) == 2 && floor((h.pos(pos2) - 1)/25) ~= -1
        ret = 1;
    end
    
end
 
function [ret] = iscamp(pos)
    loc = mod(pos, 30);
    if loc == 12 || loc == 14 || loc == 18 || loc == 22 || loc == 24
        ret = 1;
        return;
    else
        ret = 0;
        return;
    end
end



function [ret] = isbase(pos)
    loc = mod(pos, 30);
    if (loc == 2 || loc == 4 ) && pos < 121
        ret = 1;
        return;
    else
        ret = 0;
        return;
    end
end




function [ret] = rail_go_from(position, h)

    ret = [];

    counter = 0;
    
    for i = 1:18
        
        temp = h.(strcat('rail',int2str(i)));

        if ismember(position,temp )
            ind = find(temp == position);
            if (ind ~= 1 && ind ~= size(temp, 2))
                
                % two direction search  
             
                pind = ind + 1;
                mind = ind - 1;
                will_stop = 0;
                while ~will_stop
                    
                    if h.pos(temp(pind)) ~= -1 && isallies(position, temp(pind), h)
                        will_stop = 1;
                    end
                    
                    
                    counter = counter + 1;
                    ret(counter) = temp(pind);
                    pind = pind + 1;                   
                    
                    if pind == 1
                        
                        will_stop = 1;
                    end
                    
                    if pind == size(temp, 2) + 1
                        
                        will_stop = 1;
                    end
                end
                
                will_stop = 0;
                
                while ~will_stop
                    if h.pos(temp(mind)) ~= -1 && isallies(position, temp(mind), h)
                        will_stop = 1;
                    end
                    
                    counter = counter + 1;
                    ret(counter) = temp(mind);
                    mind = mind - 1;
                    
                    if mind == 0
                        will_stop = 1;
                    end
                    
                    if mind == size(temp, 2)
                      
                        will_stop = 1;
                    end
                end
            elseif ind == 1
                
                will_stop  = 0;
                pind = ind + 1;
                while ~will_stop
                    
                    
                    if h.pos(temp(pind)) ~= -1 && isallies(position, temp(pind), h)
                        will_stop = 1;
                    end
                    
                    
                    counter = counter + 1;
                    ret(counter) = temp(pind);
                    pind = pind + 1;                   
                    
                    if pind == 1
                       will_stop = 1;
                    end
                    
                    if pind == size(temp, 2) + 1
                    
                       will_stop = 1;
                    end
                    
                end
              
                
            elseif ind == size(temp, 2)
                
                mind = ind - 1;
                will_stop = 0;
                while ~will_stop
                    if h.pos(temp(mind)) ~= -1 && isallies(position, temp(mind), h)
                        break;
                    end
                    
                    counter = counter + 1;
                    ret(counter) = temp(mind);
                    mind = mind - 1;
                    
                    if mind == 0
                       
                        will_stop =1;
                    end
                    
                    if mind == size(temp, 2)
                        will_stop = 1;
                    end
                end
            end
             
        end
    end

    
    
    return;
    
    
    
end


function ret = find_threat(h)
ret = ones(4,1);
if h.piece(25) ~= -1 && ~isallies(h.piece(25), h.piece(25) + 5, h) 
    ret(1) = 0;
end

if h.piece(50) ~= -1 && ~isallies(h.piece(50), h.piece(50) + 5, h) 
    ret(2) = 0;
end

if h.piece(75) ~= -1 && ~isallies(h.piece(75), h.piece(75) + 5, h) 
    ret(3) = 0;
end

if h.piece(100) ~= -1 && ~isallies(h.piece(100), h.piece(100) + 5, h) 
    ret(4) = 0;
end

end