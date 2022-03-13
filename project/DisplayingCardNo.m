%function for displaying cards
%it dispite the number of the vector
function [] = DisplayingCardNo (player,com)
fprintf('Your cards\n')
for loop1=1:length(player)
    fprintf('%d ',player(loop1))
end
fprintf('\nCom cards\n')
for loop2=1:length(com)
    fprintf('%d ',com(loop2))
end
fprintf('\n')
end