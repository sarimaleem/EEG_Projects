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
window = 250;
nyquistLimit = samplingFrequency/2;

shortenedData = data(1, samplingFrequency*4:size(data, 2) - samplingFrequency*4); 
%We have to trip 4 seconds at the beggining and the end


spikeSpectrogram = spectrogram(data, window, [], [], samplingFrequency, 'yaxis');
spikeMag = abs(spikeSpectrogram); % magnitude of the spike

plotEEGData(data);
plotReducedSpectrogram(spikeMag, nyquistLimit);
plotSumOfBandPowers(spikeMag, nyquistLimit, 1);
%the zeros is to say that you don't plot it



shortenedSpikeSpectrogram = spectrogram(shortenedData, window, [], [], samplingFrequency, 'yaxis');
shortenedSpikeMag = abs(shortenedSpikeSpectrogram);
shortenedSumOfBands = plotSumOfBandPowers(shortenedSpikeMag, nyquistLimit, 0);


plot(shortenedData);
figure
plot(data)
percentages