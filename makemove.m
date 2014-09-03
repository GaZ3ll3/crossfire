function [h, ret] = makemove(ha, h)
%makemove check the result of the move
%   Detailed explanation goes here

% ret = 1; win
% ret = 0; both die
% ret = -1; loss
% ret = NaN; empty slot

from = mod(h.fromP - 1, 25);
to   = mod(h.toP - 1, 25);

h.steps = h.steps + 1;




% move a piece to vaccum
if (h.toP == -1)
%     disp('move to empty slot');
    set(ha(h.topos), 'CData', h.fdata);
    set(ha(h.frompos), 'CData', []);
    h.pos(h.topos) = h.fromP;
    h.pos(h.frompos) = -1;
    h.piece(h.fromP) = h.topos;
    ret = 'move';
    return;
end



% a battle
fromlvl = -1;
tolvl = -1;


level = [0,        3,         6,          9,          11,        13,     15,      17,     18,    19,    21,    24];
%        miner     pai        lian        ying        tuan       lv      shi      jun     ling   bomb   mine   flag 
for i = 1:11
    if from >= level(i) && from < level(i+1)
        fromlvl = i;
        break;
    else
        fromlvl = 12;
    end

end
for i = 1:11
    if to >= level(i) && to < level(i+1)
        tolvl = i;
        break;
    else
        tolvl = 12;
    end    
end
% fprintf('%d vs. %d\n', fromlvl, tolvl);

% if boss dies, flag status turns to be 1.
if  fromlvl <= 9 && tolvl <= 9
    % find levels of them
%     disp('battle');
    % both are not flags, mines
%     set(ha(h.frompos), 'CData', h.tdata);

    if (fromlvl > tolvl)
        set(ha(h.topos), 'CData', h.fdata);
        set(ha(h.frompos), 'CData', []);
        h.pos(h.topos) = h.fromP;
        h.pos(h.frompos) = -1;
        h.piece(h.fromP) = h.topos;
        h.piece(h.toP) = -1;
        ret = 'kill';
        return;
    end
    
    if (fromlvl < tolvl)
        set(ha(h.frompos), 'CData', []);
        h.pos(h.frompos) = -1;
        h.piece(h.fromP) = -1;
        ret = 'lose';
        return;
    end
    
    if (fromlvl == tolvl)
        set(ha(h.topos), 'CData', []);
        set(ha(h.frompos), 'CData', []);
        h.pos(h.topos) = -1;
        h.pos(h.frompos) = -1;
        h.piece(h.fromP) = -1;
        h.piece(h.toP) = -1;
        if tolvl == 9
            if h.toP == 19
                h.flags(1) = 1;
                set(ha(h.piece(25)),'CData', h.(genvarname(strcat('r','11'))));
            elseif h.toP == 44 
                h.flags(2) = 1;

                set(ha(h.piece(50)),'CData', h.(genvarname(strcat('b','11'))));
            elseif h.toP == 69
                h.flags(3) = 1;
                set(ha(h.piece(75)),'CData', h.(genvarname(strcat('g','11'))));
            else 
                h.flags(4) = 1;
                set(ha(h.piece(100)),'CData', h.(genvarname(strcat('d','11'))));
            end
            
            if h.fromP == 19
                h.flags(1) = 1;
                set(ha(h.piece(25)),'CData', h.(genvarname(strcat('r','11'))));
            elseif h.fromP == 44
                h.flags(2) = 1;
                set(ha(h.piece(50)),'CData', h.(genvarname(strcat('b','11'))));
            elseif h.fromP == 69
                h.flags(3) = 1;
                set(ha(h.piece(75)),'CData', h.(genvarname(strcat('g','11'))));
            else 
                h.flags(4) = 1;
                set(ha(h.piece(100)),'CData', h.(genvarname(strcat('d','11'))));
            end
        end
        ret = 'both die';
        return;
    end
    
end

if fromlvl == 10 
    set(ha(h.topos), 'CData', []);
    set(ha(h.frompos), 'CData', []);
    h.pos(h.topos) = -1;
    h.pos(h.frompos) = -1;
    h.piece(h.fromP) = -1;
    h.piece(h.toP) = -1;
    
    if tolvl == 9
            if h.toP == 19
                h.flags(1) = 1;
                set(ha(h.piece(25)),'CData', h.(genvarname(strcat('r','11'))));
            elseif h.toP == 44 
                h.flags(2) = 1;
                 set(ha(h.piece(50)),'CData', h.(genvarname(strcat('b','11'))));
            elseif h.toP == 69
                h.flags(3) = 1;
                 set(ha(h.piece(75)),'CData', h.(genvarname(strcat('g','11'))));
            else 
                h.flags(4) = 1;
                set(ha(h.piece(100)),'CData', h.(genvarname(strcat('d','11'))));
            end

    end
    ret = 'both die';
    return;
end

if tolvl == 10 
    set(ha(h.topos), 'CData', []);
    set(ha(h.frompos), 'CData', []);
    h.pos(h.topos) = -1;
    h.pos(h.frompos) = -1;
    h.piece(h.fromP) = -1;
    h.piece(h.toP) = -1;
    
    if fromlvl == 9
            if h.fromP == 19
                h.flags(1) = 1;
                set(ha(h.piece(25)),'CData', h.(genvarname(strcat('r','11'))));
            elseif h.fromP == 44
                h.flags(2) = 1;
                set(ha(h.piece(50)),'CData', h.(genvarname(strcat('b','11'))));
            elseif h.fromP == 69
                h.flags(3) = 1;
                set(ha(h.piece(75)),'CData', h.(genvarname(strcat('g','11'))));
            else 
                h.flags(4) = 1;
                set(ha(h.piece(100)),'CData', h.(genvarname(strcat('d','11'))));
            end

    end
    ret = 'both die';
    return;
end


% incoming piece cannot be bomb now.
if tolvl == 11
    % not a miner
    if fromlvl > 1 
        set(ha(h.frompos), 'CData', []);
        h.pos(h.frompos) = -1;
        h.piece(h.fromP) = -1;  
        
        if fromlvl == 9
            if h.fromP == 19
                h.flags(1) = 1;
                set(ha(h.piece(25)),'CData', h.(genvarname(strcat('r','11'))));
            elseif h.fromP == 44
                h.flags(2) = 1;
                set(ha(h.piece(50)),'CData', h.(genvarname(strcat('b','11'))));
            elseif h.fromP == 69
                h.flags(3) = 1;
                set(ha(h.piece(75)),'CData', h.(genvarname(strcat('g','11'))));
            else 
                h.flags(4) = 1;
                set(ha(h.piece(100)),'CData', h.(genvarname(strcat('d','11'))));
            end

        end
        ret = 'lose';
        return;
    end

    if fromlvl == 1
        % a miner
        set(ha(h.topos), 'CData', h.fdata);
        set(ha(h.frompos), 'CData', []);
        h.pos(h.topos) = h.fromP;
        h.pos(h.frompos) = -1;
        h.piece(h.fromP) = h.topos;
        h.piece(h.toP) = -1;
        ret = 'kill';
        return;
    end
end


if tolvl == 12 && h.toX == 1 && (h.toY == 2 || h.toY == 4)
%     disp('get flag')
    set(ha(h.topos), 'CData', h.fdata);
    set(ha(h.frompos), 'CData', []);
    h.pos(h.topos) = h.fromP;
    h.pos(h.frompos) = -1;
    h.piece(h.fromP) = h.topos;
    h.piece(h.toP) = -1;
    ret = 'kill';
    
    if h.to == 'A' 
        disp('r losses')
        h.loss(1) = 1;
        for i = 1:25
            if h.piece(i) ~= -1
                set(ha(h.piece(i)), 'CData',[]);
                h.pos(h.piece(i)) = -1;
                h.piece(i) = -1;
            end
        end
        return;
    elseif h.to == 'B'
        h.loss(2) = 1;
        disp('b losses')
        for i = 26:50
            if h.piece(i) ~= -1
                set(ha(h.piece(i)), 'CData',[]);
                h.pos(h.piece(i)) = -1;
                h.piece(i) = -1;
            end
        end
        return;
    elseif h.to == 'C'
        h.loss(3) = 1;
        disp('g losses')
        for i = 51:75
            if h.piece(i) ~= -1
                set(ha(h.piece(i)), 'CData',[]);
                h.pos(h.piece(i)) = -1;
                h.piece(i) = -1;
            end
        end
        return;
    elseif h.to == 'D' 
        h.loss(4) = 1;
        disp('d losses')
        for i = 76:100
            if h.piece(i) ~= -1
                set(ha(h.piece(i)), 'CData',[]);
                h.pos(h.piece(i)) = -1;
                h.piece(i) = -1;
            end
        end
        return;
    end
    return; 
end

end



