data = d; % matlab is dumb and saves as a struct
data = data(2, :);
%^^^^
%MAKE SURE THAT YOU SPECIFY THE CHANNEL I HAVE NOT DONE THAT HERE
%MAKE SURE THAT YOU SPECIFY THE CHANNEL I HAVE NOT DONE THAT HERE
%MAKE SURE THAT YOU SPECIFY THE CHANNEL I HAVE NOT DONE THAT HERE
%MAKE SURE THAT YOU SPECIFY THE CHANNEL I HAVE NOT DONE THAT HERE
%MAKE SURE THAT YOU SPECIFY THE CHANNEL I HAVE NOT DONE THAT HERE

%Also this is a notation comment - everything with 'shortned' before it is
%a variable that has had the 4 seconds trimmed off after and before


samplingFrequency = 500;
window = 125;
nyquistLimit = samplingFrequency/2;

beggining = samplingFrequency*4;
windowSize = max(size(data, 2) - samplingFrequency*8, window);


shortenedData = data(1, beggining:beggining+windowSize); 
%We have to trip 4 seconds at the beggining and the end


spikeSpectrogram = spectrogram(data, window, [], [], samplingFrequency, 'yaxis');
spikeMag = abs(spikeSpectrogram); % magnitude of the spike

plotEEGData(data, 'northwest');
plotReducedSpectrogram(spikeMag, nyquistLimit, 0);
plotSumOfBandPowers(spikeMag, nyquistLimit, 0);
%the zeros is to say that you don't plot it


shortenedSpikeSpectrogram = spectrogram(shortenedData, window, [], [], samplingFrequency, 'yaxis');
shortenedSpikeMag = abs(shortenedSpikeSpectrogram);
shortenedSumOfBands = plotSumOfBandPowers(shortenedSpikeMag, nyquistLimit, 0);
percentages = sumOfBandsPercentage(shortenedSumOfBands);

figure

close all
plotEEGData(shortenedData, 'southeast');
percentages