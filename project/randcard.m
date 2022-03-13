%function choose which card to be chosen
%from 2 to 11
%also minus 1 when one card is drawn
function [card,no] = randcard (cardd,no)
c=randi([1,10]);
card=cardd(c);
no(c)=no(c)-1;
end