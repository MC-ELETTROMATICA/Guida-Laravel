function mean = myMean(vector)
    sum = 0;
      n = length(vector);
    for i = 1:n
        sum = sum+vector(i);
    end
    mean = sum/n;
end
