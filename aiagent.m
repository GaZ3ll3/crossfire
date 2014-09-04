function [h, frompos, topos] = aiagent(ha, hObj)
%aiagent call AI script to give movements
%   

% in order to let handle work, it needs to reload everything into h.
h = guidata(hObj);
database = get(h.record, 'Data');


% enemy's AI
    if h.player.color == 'b'
        pause(0.05);
        
        [res, frompos, topos] = AI_script('b', h.piece(26:50), database, h);

        if res == 0
            h.loss(2) = 1;
            for i = 26:50
                if h.piece(i) ~= -1
                    set(ha(h.piece(i)), 'CData',[]);
                    h.pos(h.piece(i)) = -1;
                    h.piece(i) = -1;
                end
             end
        end
        
    guidata(hObj,h);
    
    return;
    end
    
    if h.player.color == 'd'
        pause(0.05);
        
        [res, frompos, topos] = AI_script('d', h.piece(76:100), database, h);

        if res == 0
            h.loss(4) = 1;
            
            for i = 76:100
                if h.piece(i) ~= -1
                    set(ha(h.piece(i)), 'CData',[]);
                    h.pos(h.piece(i)) = -1;
                    h.piece(i) = -1;
                end
             end
        end
        guidata(hObj,h);
        return;
        
    end
    
% allies' AI
    if h.player.color == 'r'
        pause(0.05);
        
        [res, frompos, topos] = AI_script('r', h.piece(1:25), database, h);
 
        if res == 0
            h.loss(1) = 1;
            for i = 1:25
                if h.piece(i) ~= -1
                    set(ha(h.piece(i)), 'CData',[]);
                    h.pos(h.piece(i)) = -1;
                    h.piece(i) = -1;
                end
             end
        end
        guidata(hObj,h);
        return;
       
    end
    
    if h.player.color == 'g'
        pause(0.05);
        
        [res, frompos, topos] = AI_script('g', h.piece(51:75), database, h);
 
        if res == 0
            h.loss(3) = 1;
            for i = 51:75
                if h.piece(i) ~= -1
                    set(ha(h.piece(i)), 'CData',[]);
                    h.pos(h.piece(i)) = -1;
                    h.piece(i) = -1;
                end
             end
        end
        guidata(hObj,h);
 
        return;
    end
    % human or not
    

%     if h.player.color == 'g'
%         uiwait(h);
% 
% 
%     end
    
    
   
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