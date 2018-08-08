function [percentages] = wt(data, wavType)

samplingFrequency = 500;

%figure;
%plot(data);
%title("EEG Data");

beggining = samplingFrequency*4; % the analysis starts at four seconds 
%so the sampling frequency times 4 basically
windowSize = max(size(data, 2) - samplingFrequency*8, 125);
%we need to specify the window size. In order to do this we basically
%take the max of either the 125 data points or the window size of the spike
%candidates
shortenedData = data(1, beggining:beggining+windowSize);

level = 6;
wpt = wpdec(shortenedData,level, wavType);
[S,T,F] = wpspectrum(wpt, 500);
S = flipud(S);

sumOfBands = sumOfBandPowers(S);
percentages = sumOfBandPercentage(sumOfBands);

end
