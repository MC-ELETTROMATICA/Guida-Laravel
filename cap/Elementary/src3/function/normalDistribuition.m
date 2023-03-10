function normal = normalDistribuition(x,mu,sigma)
    tmp1 = sqrt(2*pi*sigma.^2);
    tmp2 = (x-mu).^2;
    tmp3 = 2*sigma.^2;

    normal=(1.0/tmp1).*exp(-tmp2./tmp3);
    
end