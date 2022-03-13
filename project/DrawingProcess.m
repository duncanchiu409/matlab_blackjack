%Drawing card one by one
open=1;
while open==1
    if sum(com)<=16
        [card,no]=NewNoneRepeatCard(cardd,no);
        com=[com,card];
    end
    if sum(banker)<=16
        [card,no]=NewNoneRepeatCard(cardd,no);
        banker=[banker,card];
    end
    open=input('If you want to draw type 1\nNo type 0:');
    [card,no]=NewNoneRepeatCard(cardd,no);
    player=[player,card];
end
    
   
   