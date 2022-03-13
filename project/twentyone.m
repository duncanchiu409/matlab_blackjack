%twenty one with four players , pc , pc , me
%card vector
no=[2:11];
cards=[no;no;no;no];
%gaming
%create 3 players with a banker
Banker=[];
Banker_r=[];
Banker_c=[];
Com=[];
Com_r=[];
Com_c=[];
myself=[];
myself_r=[];
myself_c=[];
card=0;
%distribute card to players
%card distribute to banker
for loop=1:2
[r,c,card] = card_no (cards);
Banker=[Banker,card];
Banker_r=[Banker_r,r];
Banker_c=[Banker_c,c];
end
%card distribute to com
for loop=1:2
[r,c,card] = card_no (cards);
Com=[Com,card];
Com_r=[Com_r,r];
Com_c=[Com_c,c];
end
%card distribute to myself
for loop=1:2
[r,c,card] = card_no (cards);
myself=[myself,card];
myself_r=[myself_r,r];
myself_c=[myself_c,c];
end
for loop=1:2
    if myself_r(
%point calculation
