function [sumValue,value] = ThrowingTwoDice(dimDice) 

       value = zeros(dimDice,2);
    sumValue = zeros(1, dimDice);

    for i=1:dimDice
        value(i,1) = randi(6);
        value(i,2) = randi(6);
       sumValue(i) = value(i,1)+value(i,2);
    end
end
