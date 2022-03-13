%Gambling Asset to be set to increase fun 
BA=10000;
PA=1500;
CA=1500;

%play some chill music :) ;) ;)
% no copy right music sir!!!
% dont deduct my marks!!!
[y,fs]=audioread('DOPEMUSIC.mp3');
musicplayer=audioplayer(y,fs);

play(musicplayer);

%while switch for leaving
leave=1;
fprintf('U have 1500AUD asset for gambling.\n')
while leave==1
    GamePlayer=input('How much you Gambling this round?:');
    while GamePlayer<=0
    GamePlayer=input('Pls put in a positive integer:');
    end
    GameCom=100;

    %Create card for drawing 
%cards with numbers recorded
cardd=[2:11];
%number of cards inside the poker in the deck
%repected to the index
no=[4,4,4,4,4,4,4,4,16,4];
%player card vecotr for display
banker=[];
com=[];
player=[];

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

%checking if anyone has 21
if sum(player)==sum(banker)&&sum(banker)==21
    disp('You and Banker Draws')
else if sum(player)==21
        disp('You BlackJack')
    end
end
if sum(com)==sum(banker)&&sum(banker)==21
    disp('Com and Banker Draws')
    
else if sum(com)==21
        disp('Com BlackJack')
    end
end
if sum(banker)==21
    disp('Banker BlackJack')
end
%avoid 11,11 appearing
player=TurnAceInto1(player);
com=TurnAceInto1(com);
banker=TurnAceInto1(banker);

%function for displaying vector
DisplayingCardNo(player,com)

%if is added to prevent code running if blackjack happens
if sum(banker)~=21&&sum(player)~=21||sum(banker)~=21&&sum(com)~=21
%situation for drawing
open=1;
while open==1
    %computer draws and banker draws
    if sum(com)<=17
        [card,no]=NewNoneRepeatCard(cardd,no);
        com=[com,card];
    end
    
    if sum(banker)<=17
        [card,no]=NewNoneRepeatCard(cardd,no);
        banker=[banker,card];
    end
    %player draws
    open=input('\nDraw one card\nYes type 1\nNo type 0:');
    if open==1
    [card,no]=NewNoneRepeatCard(cardd,no);
    player=[player,card];
    %display card after drawing
    DisplayingCardNo (player,com)
    end
end
%check cards who ace with turn ace into 1 for 1 card only
%function
player=TurnAceInto1(player);
com=TurnAceInto1(com);
banker=TurnAceInto1(banker);
fprintf('\n');
Checking(banker,player,com)
fprintf('\n');
end
%asset calculation
[PA,BA] = AssetFunction(PA,GamePlayer,BA,player,banker);
[CA,BA] = AssetFunction(CA,GameCom,BA,com,banker);

if PA<=0
    fprintf('GET YOUR ASS OFF MAN\nYOU ARE BROKE NOW!!!\nGAMEOVER')
    stop(musicplayer);
    return
end
%hiden gamover Banker got bankrupt
if BA<=0
    fprintf('U wins all the money U can from banker\nU leave with %d\nCONGRADULATION',PA)
    stop(musicplayer);
    return
end
fprintf('Com now have %dAUD\n',CA)

disp('Do u want to leave?')
fprintf('U now have:\n   %d',PA)
leave=input('\nYES type 0\nNO type 1:');
end
fprintf('U get away with %d AUD',PA)
stop(musicplayer);







    
     
