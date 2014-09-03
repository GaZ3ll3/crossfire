function [h, frompos, topos] = aiagent(hObj)
%aiagent call AI script to give movements
%   

% in order to let handle work, it needs to reload everything into h.
h = guidata(hObj);
database = get(h.record, 'Data');


% enemy's AI
    if h.player.color == 'b'
        pause(2);
        
        [frompos, topos] = AI_script('b', h.piece(26:50), database);
        

    end
    
    if h.player.color == 'd'
        pause(2);
        
        [frompos, topos] = AI_script('d', h.piece(76:100), database);


    end
    
% allies' AI
    if h.player.color == 'r'
        pause(2);
        
        [frompos, topos] = AI_script('r', h.piece(1:25), database);
        

    end
    
    if h.player.color == 'g'
        pause(2);
        
        [frompos, topos] = AI_script('g', h.piece(51:75), database);
        
    end
    % human or not
    

%     if h.player.color == 'g'
%         uiwait(h);
% 
% 
%     end
    
    
   
end


function [ret] = avail_move(color, h)
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