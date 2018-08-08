function [ sumOfBands ] = sumOfBandPowers(SPEC)
%SUMOFBANDPOWERS Summary of this function goes here
%   Detailed explanation goes here

deltaBand = sum(sum(SPEC(1, :)));
thetaBand = sum(sum(SPEC(2, :)));
alphaBand = sum(sum(SPEC(3:4, :)));
betaBand = sum(sum(SPEC(5:8, :)));
gammaBand = sum(sum(SPEC(9:13, :)));

sumOfBands = [deltaBand thetaBand alphaBand betaBand gammaBand];

end

