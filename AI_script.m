function [frompos, topos] = AI_script(color, own_pieces, database)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if color == 'r'
    frompos = 30;
    topos = 56;
    database
end

if color == 'b'
    frompos = 60;
    topos = 86;
    database
end

if color == 'g'
    frompos = 88;
    topos = 127;
    database
end

if color == 'd'
    frompos = 120;
    topos = 26;
    database
end


end

