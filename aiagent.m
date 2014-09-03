function [h, frompos, topos] = aiagent(h)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


% enemy's AI
    if h.player.color == 'b'
        pause(3);
        
        frompos = 60;
        topos = 86;
    end
    
    if h.player.color == 'd'
        pause(3);
        
        frompos = 116;
        topos = 90;
    end
    
% allies' AI
    if h.player.color == 'r'
        pause(3);
        
        frompos = 26;
        topos = 120;
    end
    
    if h.player.color == 'g'
        pause(3);
        
        frompos = 88;
        topos = 127;
    end
    % human or not
    

%     if h.player.color == 'g'
%         uiwait(h);
% 
% 
%     end
    
    
   
end

