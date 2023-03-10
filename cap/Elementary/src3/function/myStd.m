function std = myStd(z)
       s = MyMean(z);
       n = length(z);
    tmps = 0;

for i = 1:n
    tmps = tmps + (z(i)-s)^2;
end

 std = sqrt(tmps/(n));

end
