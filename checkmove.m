function [check, h] = checkmove(h)
%CHECKMOVE check whether the move is valid
% check = 0 means invalid move
check = 0;
% check = 1 means these move can go
if (it_can_move(h) && h.first_click == 0)
    if (h.player.color == 'r' && floor((h.fromP - 1)/25) ~= 0)
        return;
    end
    if (h.player.color == 'b' && floor((h.fromP - 1)/25) ~= 1)
        return;
    end
    if (h.player.color == 'g' && floor((h.fromP - 1)/25) ~= 2)
        return;
    end
    if (h.player.color == 'd' && floor((h.fromP - 1)/25) ~= 3)
        return;
    end
    disp('this move is from correct player');
% first click = 0 means one move is complete
% logic for camp
    if ((h.fromX == 3 && h.fromY == 2) || ...
            (h.fromX == 3 && h.fromY == 4) || ...
            (h.fromX == 4 && h.fromY == 3) || ...
            (h.fromX == 5 && h.fromY == 2) || ...
            (h.fromX == 5 && h.fromY == 4))
        % in camp
        disp('move from camp');
        if (h.to == h.from) && (abs(h.toX - h.fromX) < 2) && (abs(h.toY - h.fromY) <2)  
            check = 1;
            return;
        end
    end

% logic for base
    if (h.fromX == 1 && h.fromY == 2) || (h.fromX == 1 && h.fromY == 4)
        disp('move from base');
        check = 0;
        return;
    end
% logic for railway to railway

% same railway
    if (ismember(h.frompos, h.rail1) && ismember(h.topos, h.rail1)) || ...
         (ismember(h.frompos, h.rail2) && ismember(h.topos, h.rail2)) ||...
          (ismember(h.frompos, h.rail3) && ismember(h.topos, h.rail3)) || ...
           (ismember(h.frompos, h.rail4) && ismember(h.topos, h.rail4)) || ...
            (ismember(h.frompos, h.rail5) && ismember(h.topos, h.rail5)) || ...
             (ismember(h.frompos, h.rail6) && ismember(h.topos, h.rail6)) || ...
              (ismember(h.frompos, h.rail7) && ismember(h.topos, h.rail7))  || ...
               (ismember(h.frompos, h.rail8) && ismember(h.topos, h.rail8)) || ...
                (ismember(h.frompos, h.rail9) && ismember(h.topos, h.rail9)) || ...
                 (ismember(h.frompos, h.rail10) && ismember(h.topos, h.rail10)) || ...
                  (ismember(h.frompos, h.rail11) && ismember(h.topos, h.rail11)) || ...
                   (ismember(h.frompos, h.rail12) && ismember(h.topos, h.rail12)) || ...
                    (ismember(h.frompos, h.rail13) && ismember(h.topos, h.rail13)) || ...
                     (ismember(h.frompos, h.rail14) && ismember(h.topos, h.rail14))

        disp('same rail to same rail');
        if (ismember(h.frompos, h.rail1) && ismember(h.topos, h.rail1))
            from_ind = find(h.rail1 == h.frompos);
            to_ind   = find(h.rail1 == h.topos);
            disp('on rail1');
 
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail1(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                h.pos(h.rail1(min(from_ind,to_ind):max(from_ind, to_ind)))
                disp('someth in middle');
                check = 0;
                return;
            end
        end

        if (ismember(h.frompos, h.rail2) && ismember(h.topos, h.rail2))
            from_ind = find(h.rail2 == h.frompos);
            to_ind   = find(h.rail2 == h.topos);
            disp('on rail2');
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail2(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                h.pos(h.rail2(min(from_ind,to_ind):max(from_ind, to_ind)))
                disp('someth in middle')
                check = 0;
                return;
            end
        end

        if (ismember(h.frompos, h.rail3) && ismember(h.topos, h.rail3))
            from_ind = find(h.rail3 == h.frompos);
            to_ind   = find(h.rail3 == h.topos);
            disp('on rail3');
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail3(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                h.pos(h.rail3(min(from_ind,to_ind):max(from_ind, to_ind)))
                disp('someth in middle');
                check = 0;
                return;
            end
        end

        if (ismember(h.frompos, h.rail4) && ismember(h.topos, h.rail4))
            from_ind = find(h.rail4 == h.frompos);
            to_ind   = find(h.rail4 == h.topos);
            disp('on rail4');
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail4(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                h.pos(h.rail4(min(from_ind,to_ind):max(from_ind, to_ind)))
                disp('someth in middle');
                check = 0;
                return;
            end
        end

        if (ismember(h.frompos, h.rail5) && ismember(h.topos, h.rail5))
            from_ind = find(h.rail5 == h.frompos);
            to_ind   = find(h.rail5 == h.topos);
            disp('rail5');
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail5(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                h.pos(h.rail5(min(from_ind,to_ind):max(from_ind, to_ind)))
                disp('someth in middlle');
                check = 0;
                return;
            end
        end

        if (ismember(h.frompos, h.rail6) && ismember(h.topos, h.rail6))
            from_ind = find(h.rail6 == h.frompos);
            to_ind   = find(h.rail6 == h.topos);
            disp('rail6');
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail6(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                disp('someth in middle');
                h.pos(h.rail6(min(from_ind,to_ind):max(from_ind, to_ind)))
                check = 0;
                return;
            end
        end


        if (ismember(h.frompos, h.rail7) && ismember(h.topos, h.rail7))
            from_ind = find(h.rail7 == h.frompos);
            to_ind   = find(h.rail7 == h.topos);
            disp('rail7');
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail7(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                check = 0;
                return;
            end
        end


        if (ismember(h.frompos, h.rail8) && ismember(h.topos, h.rail8))
            from_ind = find(h.rail8 == h.frompos);
            to_ind   = find(h.rail8 == h.topos);
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail8(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                check = 0;
                return;
            end
        end
        if (ismember(h.frompos, h.rail9) && ismember(h.topos, h.rail9))
            from_ind = find(h.rail9 == h.frompos);
            to_ind   = find(h.rail9 == h.topos);
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail9(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                check = 0;
                return;
            end
        end
        if (ismember(h.frompos, h.rail10) && ismember(h.topos, h.rail10))
            from_ind = find(h.rail10 == h.frompos);
            to_ind   = find(h.rail10 == h.topos);
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail10(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                check = 0;
                return;
            end
        end
        if (ismember(h.frompos, h.rail11) && ismember(h.topos, h.rail11))
            from_ind = find(h.rail11 == h.frompos);
            to_ind   = find(h.rail11 == h.topos);
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail11(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                check = 0;
                return;
            end
        end
        if (ismember(h.frompos, h.rail12) && ismember(h.topos, h.rail12))
            from_ind = find(h.rail12 == h.frompos);
            to_ind   = find(h.rail12 == h.topos);
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail12(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                check = 0;
                return;
            end
        end
        if (ismember(h.frompos, h.rail13) && ismember(h.topos, h.rail13))
            from_ind = find(h.rail13 == h.frompos);
            to_ind   = find(h.rail13 == h.topos);
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail13(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                check = 0;
                return;
            end
        end
        if (ismember(h.frompos, h.rail14) && ismember(h.topos, h.rail14))
            from_ind = find(h.rail14 == h.frompos);
            to_ind   = find(h.rail14 == h.topos);
            if (from_ind ~= to_ind) && ...
                    sum(h.pos(h.rail14(min(from_ind,to_ind):max(from_ind, to_ind)))) == ...
                    h.fromP + h.toP + (-1)*(abs(from_ind - to_ind) - 1)
                % empty in between
                check = 1;
                return;
            else
                check = 0;
                return;
            end
        end
    % from different railway
    elseif ismember(h.frompos, h.rail) && ismember(h.topos, h.rail) && ...
            ((ismember(h.frompos, h.rail1) && ~ismember(h.topos, h.rail1)) || ...
            (ismember(h.frompos, h.rail2) && ~ismember(h.topos, h.rail2)) || ...
            (ismember(h.frompos, h.rail3) && ~ismember(h.topos, h.rail3)) || ...
            (ismember(h.frompos, h.rail4) && ~ismember(h.topos, h.rail4)) || ...
            (ismember(h.frompos, h.rail5) && ~ismember(h.topos, h.rail5)) || ...
            (ismember(h.frompos, h.rail6) && ~ismember(h.topos, h.rail6)) || ...
            (ismember(h.frompos, h.rail7) && ~ismember(h.topos, h.rail7)) || ...
            (ismember(h.frompos, h.rail8) && ~ismember(h.topos, h.rail8)) || ...
            (ismember(h.frompos, h.rail9) && ~ismember(h.topos, h.rail9)) || ...
            (ismember(h.frompos, h.rail10) && ~ismember(h.topos, h.rail10)) || ...
            (ismember(h.frompos, h.rail11) && ~ismember(h.topos, h.rail11)) || ...
            (ismember(h.frompos, h.rail12) && ~ismember(h.topos, h.rail12)) || ...
            (ismember(h.frompos, h.rail13) && ~ismember(h.topos, h.rail13)) || ...
            (ismember(h.frompos, h.rail14) && ~ismember(h.topos, h.rail14)))
        disp('not same rail');
        % not same railway, must be miner.
        if (mod(h.fromP, 25) ~= 1 || mod(h.fromP, 25) ~= 2 || mod(h.fromP, 25) ~= 3)
            check = 0;
            return
        else
            % it is a miner, then run the miner 
            check = miner_dps(h);
            return;
        end

    else
        % not a R to R, not a camp, not base
        % two cases, within own side, or own side and central part.
        % latter one is included in railway case.
        % only consider within own side
        disp('other cases');
        if (h.from ~= h.to)
            % not same side
            check = 0;
            return;
        else
            % normal move
            if abs(h.fromX - h.toX) + abs(h.fromY - h.toY) == 1 && ~iscamp(h.topos)
                check = 1;
                return;
            % into camp, vacant camp needed
            elseif abs(h.fromX - h.toX) < 2 && abs(h.fromY - h.toY) < 2 && iscamp(h.topos) && h.pos(h.topos) == -1
                check = 1;
                return;
            end
        end
    
    end


else
    check = 0;
end

end

function [ret] = it_can_move(h)

ret = 0;
% same player's
if (floor((h.toP - 1)/25) == floor((h.fromP - 1)/25)) 
    return;
% 0, 2 and 1, 3 are allies. and rule out (-1, 1) combination.
elseif abs(floor((h.toP - 1)/25)- floor((h.fromP - 1)/25)) == 2 && floor((h.toP - 1)/25) ~= -1
    return;
end
% piece exists, not a mine, not in base 
if (h.fromX == 1 && h.fromY == 2) || (h.fromX == 1 && h.fromY == 4)
    return;
end

if h.fromP == -1 || mod(h.fromP,25) == 22 || ...
        mod(h.fromP,25) == 23 || mod(h.fromP,25) == 24 
    return;
end



ret = 1;


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