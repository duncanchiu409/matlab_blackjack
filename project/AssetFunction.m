%function for calculating asset
function [PA,BA] = AssetFunction(PA,GamePlayer,BA,player,banker)
if sum(player)>sum(banker)&&sum(player)<=21||sum(banker)>21&&sum(player)<=21
    PA=GamePlayer+PA;
    BA=BA-GamePlayer;
else if sum(player)<sum(banker)&&sum(banker)<=21||sum(player)>21&&sum(banker)<=21
        PA=PA-GamePlayer;
        BA=BA+GamePlayer;
    end
end
    
    
    