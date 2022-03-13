%this function check if the card have appeared 4 times 
%if yes inside no a vector should be 0
%and give a new card 
function [card,no]= NewNoneRepeatCard (cardd,no)
stc=false;
while ~stc
    c=randi([1,10]);
    if no(c)~=0
        card=cardd(c);
        no(c)=no(c)-1;
        stc=true;
    end
        
end
