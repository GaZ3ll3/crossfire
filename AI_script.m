function [res, frompos, topos] = AI_script(color, own_pieces, database, h)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if color == 'r'
    pstart = 0;
    apstart = 50;
elseif color == 'b'
    pstart = 25;
    apstart = 75;
elseif color == 'g'
    pstart = 50;
    apstart = 0;
elseif color == 'd'
    pstart = 75;
    apstart = 25;
end
[res, frompos, topos] = rand_ai(color, h, pstart, apstart);

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
            if temp(j) ~= pos && ~isallies(pos, temp(j), h) && ...
                    ((iscamp(temp(j)) && h.pos(temp(j)) == -1) || ...
                    (~iscamp(temp(j))) && ((isbase(temp(j)) && h.pos(temp(j)) ~= -1))) || (~isbase(temp(j)))
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


function ret = find_top_threat(color, h)
ret = 1;
if color == 'r' && h.piece(25) ~= -1 && ~isallies(h.piece(25), h.piece(25) + 5, h)
    ret = 0;
    return;
end

if  color == 'b' && h.piece(50) ~= -1 && ~isallies(h.piece(50), h.piece(50) + 5, h)
    ret = 0;
    return;
end

if color == 'g' && h.piece(75) ~= -1 && ~isallies(h.piece(75), h.piece(75) + 5, h) 
    ret = 0;
    return;
end

if color == 'd'&& h.piece(100) ~= -1 && ~isallies(h.piece(100), h.piece(100) + 5, h) 
    ret = 0;
    return;
end

end



function [res, frompos, topos] = rand_ai(color ,h, pstart, apstart)

    res = 1;
    
    moves = avail_move(color, h);
    
    
    if isempty(moves)
        res = 0;
        frompos = -1;
        topos = -1;
        return;
    end
    
    
    nothreat = find_top_threat(color, h);
    
    if (nothreat)
        ind = randi(size(moves,1));
        frompos = moves(ind, 1);
        topos = moves(ind, 2);        
    
    else 
        admissible = find(h.piece(pstart + 25) + 5 == moves(:,2));
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% THREAT FIELD BASED ARTIFICIAL INTELLIGENCE

% GOAL : MAXIMIZE OWN THREAT AND MINIMIZE OPPONENT'S

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



































