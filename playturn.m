function [h] = playturn(ha, h)
%PLAYTURN Summary of this function goes here
%   Detailed explanation goes here
% fprintf('now player color is %s\n', h.player.color);

    if h.player.color == 'r'
        pstart = 0;
    elseif h.player.color == 'b'
        pstart = 25;
    elseif h.player.color == 'g'
        pstart = 50;
    elseif h.player.color == 'd'
        pstart = 75;
    elseif h.player.color == 'w'
        return;
    elseif h.player.color == 'l'
        return;
    end

    if h.side == 'A'
        start = 0;
    elseif h.side == 'B'
        start = 30;
    elseif h.side == 'C'
        start = 60;
    elseif h.side == 'D'
        start = 90;
    else 
        start = 120;
    end

    if strcmp(h.side, 'AB')
        addon = 1;
    elseif strcmp(h.side,'BC')
        addon = 2;
    elseif strcmp(h.side, 'CD')
        addon = 3;
    elseif strcmp(h.side, 'DA')
        addon = 4;
    elseif strcmp(h.side, 'OA')
        addon = 5;
    elseif strcmp(h.side, 'OB')
        addon = 6;
    elseif strcmp(h.side, 'OC')
        addon = 7;
    elseif strcmp(h.side, 'OD')
        addon = 8;
    elseif h.side == 'O'
        addon = 9;
    else
        addon = 5*(h.X-1) + h.Y;
    end

position = start + addon;

% valid move, move your own pieces
% first click, select own piece
% avoid places without pieces

    if ((h.pos(position) > pstart && h.pos(position) <= pstart + 25))
%         fprintf('select piece at position %d, it is %d\n', position, h.pos(position));
        h.from  = h.side;
        h.fromX = h.X;
        h.fromY = h.Y;
        h.fromP = h.pos(position);
        h.frompos = position;
        h.fdata = get(ha(h.frompos),'CData');
        h.first_click = 1;


    % second click, select another slot
    else
        if (h.first_click)
            h.to  = h.side;
            h.toX = h.X;
            h.toY = h.Y;
            h.toP = h.pos(position);
            h.topos = position;
            h.tdata = get(ha(h.topos),'CData');
%             fprintf('move to %d, it is %d\n', position, h.toP);
            h.first_click = 0;
        end


    end

    [check, h] = checkmove(h);

    

    
    if (check && ~h.finished)
        [h, fight_res] = makemove(ha, h);    
        database = get(h.record, 'Data');


        database{h.steps, 1} = upper(h.player.color);
        database{h.steps, 2} = strcat(h.from, strcat(int2str(h.fromX), int2str(h.fromY)));
        database{h.steps, 3} = strcat(h.to, strcat(int2str(h.toX), int2str(h.toY)));
        database{h.steps, 4} = fight_res;
        set(h.record, 'Data',database);
        
        
        
        h.ptr = h.ptr + 1;
        
        h.stat(h.ptr, 1) = (sum(find(h.piece(1:25) + 1)) + sum(find(h.piece(51:75) + 1)))/(sum(find(h.piece(26:50) + 1)) + sum(find(h.piece(76:100) + 1)));
        h.stat(h.ptr, 2) = (size(find(h.piece(1:25) + 1), 1) + size(find(h.piece(51:75) + 1), 1))/(size(find(h.piece(26:50) + 1),1) + size(find(h.piece(76:100) + 1),1));
        
        % plot
        
        if h.ptr < 500
            plot(h.allies,1:h.ptr,h.stat(1:h.ptr,1), 'r');
            hold on;
            plot(h.allies, 1:h.ptr, h.stat(1:h.ptr,2), 'b');
            grid(h.allies, 'on');
            hold off;
        else
            plot(h.allies,h.ptr-499:h.ptr,h.stat(h.ptr-499:h.ptr,1), 'r');
            hold on;
            plot(h.allies, h.ptr-499:h.ptr, h.stat(h.ptr-499:h.ptr,2), 'b');
            grid(h.allies, 'on');
            hold off;
        end

%         disp(h.loss);
%         disp(h.flags);        


        
        
        
        if h.player.color == 'w' || h.player.color == 'l'
            disp(h.player.color);
            h.finished = 1;
        end
%         disp(h.player.color);  

       if h.player.color == 'g' && h.human == 1
           uiresume(h.crossfire);
       end
       
       
       h.player.color = next_color(h);
       
       
       
    end
    
    


    

    
   
    
end