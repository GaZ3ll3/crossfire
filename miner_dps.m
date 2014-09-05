function [check] = miner_dps(h)
%miner_dps use dps to search path

check = 0;

not_found = 1;

visited = zeros(129, 1);

curr = [h.frompos];

visited(curr) = 1;

counter = sum(visited);


if h.player.color == 'r'
    me = 0;
    friend = 2 ;
elseif h.player.color == 'b'
    me = 1;
    friend = 3;
elseif h.player.color == 'g'
    me = 2;
    friend = 0;
elseif h.player.color == 'd'
    me = 3;
    friend = 1;
end

while not_found
    
    
    if ismember(h.topos, curr)
        check = 1;
        return;
    end
    
    next = [];
    for i = 1:max(size(curr, 1), size(curr, 2))
        
        pos = curr(i);
        
        avail = find(h.railadj(pos,:));
       
        
        
        for j = 1:max(size(avail, 1), size(avail, 2))
            if floor((h.pos(avail(j)) - 1)/25) ~= me && floor((h.pos(avail(j)) - 1)/25)  ~= friend && visited(avail(j)) ~= 1
                next = union(next, avail(j));
            end
        end
        
        visited(next) = 1;
        
        if (sum(visited) == counter)
            check = 0;
            return;
        end
        
    end
    curr = next;
end

end

