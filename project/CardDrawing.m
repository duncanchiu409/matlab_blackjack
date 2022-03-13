%Card distribution for 2 card initiation
%banker vector
for loop=1:2
    %funciton for draw card from variable 
    [card,no]=randcard(cardd,no);
    banker=[banker,card];
end
%com vector
for loop=1:2
    %funciton for draw card from variable 
    [card,no]=randcard(cardd,no);
    com=[com,card];
end
%myself vector
%add code to check if there are over usage of card
%if any number is appeared over 4 times 
for loop=1:2
    [card,no]=NewNoneRepeatCard(cardd,no);
    player=[player,card];
end