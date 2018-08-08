function [sumOfBandsPercentage] = sumOfBandPercentage(sumOfBands)

total = sum(sum(sumOfBands));
sumOfBandsPercentage = sumOfBands/total*100;

end