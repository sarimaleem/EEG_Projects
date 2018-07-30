function percentage = sumOfBandsPercentage(sumOfBandPowers)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
totalSum = sum(sum(sumOfBandPowers));
rowSum = sum(sumOfBandPowers, 2);
percentage = rowSum/totalSum*100;

end
