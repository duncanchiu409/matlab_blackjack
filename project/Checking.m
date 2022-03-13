%function determine if somone lose
function []= Checking(banker,player,com)
%draw situation program (player)
if sum(player)>21&&sum(banker)>21||sum(player)<21&&sum(banker)==sum(player)
    disp('Banker and You Draws')
else if sum(player)<21&&sum(banker)>21||sum(player)==21&&sum(banker)~=21||sum(player)>sum(banker)&&sum(player)<21
        %for the you wins situation
        disp('You wins')
    else
        disp('Banker wins You')
    
    end
end
%draw situation program (com)
if sum(com)>21&&sum(banker)>21||sum(com)<=21&&sum(banker)==sum(com)
    disp('Banker and Com Draws')
else if sum(com)<21&&sum(banker)>21||sum(com)==21&&sum(banker)~=21||sum(com)>sum(banker)&&sum(com)<21
        %for the com wins situation
        disp('Com wins')
    else 
        disp('Banker wins Com')
    
    end
end
end
    
    
    
    
    
    
