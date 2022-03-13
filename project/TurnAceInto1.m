%turn only one ace card value into 1
%if the player busted
function [player] = TurnAceInto1(player)
if sum(player)>21
    AceIndex=0;
for u=1:length(player)
    if player(u)==11
        AceIndex=u;
    end
end
if AceIndex~=0
player(AceIndex)=1;
end
end
end