function [h]=importpiece(ha, h, color, open)
% import piece information from each players openning.
% and check board info
stat = zeros(12,1);
if color == 'r'
    start = 0;
    pstart = 0;
elseif color == 'b'
    start = 30;
    pstart = 25;
elseif color == 'g'
    start = 60;
    pstart = 50;
elseif color == 'd'
    start = 90;
    pstart = 75;
end


for i = 1:6
    for j = 1:5
        if open(i,j) == 0
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'0'))));
            h.pos(start + 5*(i - 1) + j) =pstart + stat(1) + 1;
            h.piece(pstart + stat(1) + 1) = start + 5*(i-1) + j;
            stat(1) = stat(1) + 1;
        end

        if open(i,j) == 1
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'1'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(2) + 4;
            h.piece(pstart + stat(2) + 4) = start + 5*(i-1) + j;
            stat(2) = stat(2) + 1;
        end

        if open(i,j) == 2
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'2'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(3) + 7;
            h.piece(pstart + stat(3) + 7) = start + 5*(i-1) + j;
            stat(3) = stat(3) + 1;
        end   

        if open(i,j) == 3
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'3'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(4) + 10;
            h.piece(pstart + stat(4) + 10) = start + 5*(i-1) + j;
            stat(4) = stat(4) + 1;
        end            
        if open(i,j) == 4
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'4'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(5) + 12;
            h.piece(pstart + stat(5) + 12) = start + 5*(i-1) + j;            
            stat(5) = stat(5) + 1;
        end

        if open(i,j) == 5
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'5'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(6) + 14;
            h.piece(pstart + stat(6) + 14) = start + 5*(i-1) + j;            
            stat(6) = stat(6) + 1;
        end

        if open(i,j) == 6
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'6'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(7) + 16;
            h.piece(pstart + stat(7) + 16) = start + 5*(i-1) + j;            
            stat(7) = stat(7) + 1;
        end   

        if open(i,j) == 7
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'7'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(8) + 18;
            h.piece(pstart + stat(8) + 18) = start + 5*(i-1) + j;            
            stat(8) = stat(8) + 1;
        end       
        if open(i,j) == 8
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'8'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(9) + 19;
            h.piece(pstart + stat(9) + 19) = start + 5*(i-1) + j;
            stat(9) = stat(9) + 1;
        end

        if open(i,j) == 9
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'9'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(10) + 20;
            h.piece(pstart + stat(10) + 20) = start + 5*(i-1) + j;
            stat(10) = stat(10) + 1;
        end

        if open(i,j) == 10
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'10'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(11) + 22;
            h.piece(pstart + stat(11) + 22) = start + 5*(i-1) + j;
            stat(11) = stat(11) + 1;
        end   

        if open(i,j) == 11
            set(ha(start + 5*(i - 1) + j),'CData', h.(genvarname(strcat(color,'11'))));
            h.pos(start + 5*(i-1) + j) = pstart + stat(12) + 25;
            h.piece(pstart + stat(12) + 25) = start + 5*(i-1) + j;
            stat(12) = stat(12) + 1;
        end                   
    end

end


if (~isequal(stat, [3;3;3;2;2;2;2;1;1;2;3;1]))
    error('incorrect number of some item');
end

for i = 1:5
    if open(6, i) == 9
        error('Bomb on first row');
    end
    
    if (open(3, i) == 10 || open(4, i) == 10 || ...
            open(5, i) == 10 || open(6, i) == 10)
        error('Mine not on last two rows');
    end
    
    
end
if (open(1, 2) ~= 11 && open(1,4) ~= 11)
    error('Flag not in base');
end
end

