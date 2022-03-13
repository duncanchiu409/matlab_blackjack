%twenty one game
%cards in a poker
cardd=[2:11];
%number of cards inside the poker in the deck
%repected to the index
no=[4,4,4,4,4,4,4,4,16,4];
%Players card vector
banker=[];
com=[];
player=[];

%card distribution
%banker vector
for loop=1:2
    [card]=card_no(cardd);
    banker=[banker,card];
   no(card-1)=no(card-1)-1;
end
%com vector
for loop=1:2
    [card]=card_no(cardd);
    com=[com,card];
    no(card-1)=no(card-1)-1;
end
%myself vector
for loop=1:2
    stc=1;
    while stc==1
    [card]=card_no(cardd);
    if no(card-1)~=0
        player=[player,card];
        stc=0;
       no(card-1)=no(card-1)-1;
    end
    end
end
%display the card of playres
fprintf('Com card :\n%d   %d',com(1),com(2))
fprintf('\n')
fprintf('My card :\n%d   %d',player(1),player(2))
fprintf('\n')

if sum(banker)==21&& sum(com)~=21 && sum(player)~=21
    disp('banker wins')
    return
end
if sum(com)==21 && sum(banker)~=21 && sum(player)~=21
    disp('com wins')
    return
end
if sum(player)==21 && sum(banker)~=21 && sum(com)~=21
    disp('player wins')
    return
end
if sum(player)==21 || sum(banker)==21 || sum(com)==21
    disp('the game draws')
    return
end
%situation for draw card;
draw=false;
while  ~draw
onemore=input('if u need another card\ntype 1 for more\ntype 0 for no:');
stc2=1;
if onemore==1
    while stc2==1
        [card]=card_no(cardd);
        if no(card-1)~=0
            player=[player,card];
            no(card-1)=no(card-1)-1;
            stc2=0;
        end
    end
end

if sum(com)<=18
    stc3=1;
    while stc3==1
        [card]=card_no(cardd);
        if no(card-1)~=0
            com=[com,card];
            no(card-1)=no(card-1)-1;
            stc3=0;
        end
    end
end

if sum(player)>sum(banker)
    stc4=1;
    while stc4==1
        [card]=card_no(cardd);
        if no(card-1)~=0
            banker=[banker,card];
            no(card-1)=no(card-1)-1;
            stc4=0;
        end
    end
end

if sum(player)>21||sum(com)>21||sum(banker)>21
    player=TurnAceInto1(player);
    com=TurnAceInto1(com);
    banker=TurnAceInto1(banker);
end

fprintf('Com card :\n%d   %d',com(1),com(2))
fprintf('\n')
fprintf('My card :\n%d   %d',player(1),player(2))
fprintf('\n')

if onemore==0
    draw=true;
end
end

%determine who wins
if sum(player)>sum(banker)&&sum(player)>sum(com)&&sum(player)<=21
    disp('player wins')
else if sum(com)>sum(banker)&&sum(com)>sum(player)&&sum(com)<=21
        disp('com wins')
    else if sum(banker)>sum(player)&&sum(banker)>sum(com)&&sum(banker)<=21
            disp('Banker wins')
        end
    end
end

if sum(player)==sum(com)==21>sum(banker)
    disp('player and com wins')
end