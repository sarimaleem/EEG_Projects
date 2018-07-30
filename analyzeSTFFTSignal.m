%PURPOSE: the purpose of this file is to combine all the other methods into
%creating a file that can analyze one piece of EEG data. This analysis
% includes a (1) heatmap of the complex magnitude of the short time fourier transorm of
% the signal (2) a plot that can plot the sum of the powers of all five
% bands (3) function that returns a vector with the percentage that that
% sum is of the total signal.

data = d; % Usually when you double click the data file it 
%shows up as a variable named d in your workspace for some reason.
%for the entire script we are naming the file data

data = data(2, :); % make sure that you specify the channel in order to 
%extract the correct data.

%Also this is a notation comment - everything with 'shortned' before it is
%a variable that has had the 4 seconds trimmed off after and before


samplingFrequency = 500;
window = 125;
nyquistLimit = samplingFrequency/2;

%Here we are specifying some of our universal variables
%the sampling frequency has been down sampled from 5000 hertz
%to 500 in order to fit the data better.
%Also the nyquistLimit is important because it helpse scale our data for
%the spectrogram analysis, you'll see how later.

beggining = samplingFrequency*4; % the analysis starts at four seconds 
%so the sampling frequency times 4 basically
windowSize = max(size(data, 2) - samplingFrequency*8, window);
%we need to specify the window size. In order to do this we basically
%take the max of either the 125 data points or the window size of the spike
%candidates

shortenedData = data(1, beggining:beggining+windowSize); 
%We have to trip 4 seconds at the beggining and the end


spikeSpectrogram = spectrogram(data, window, [], [], samplingFrequency, 'yaxis');
spikeMag = abs(spikeSpectrogram); % We take the complex 
%magnitude of the spike in order to get an accurate picture of the data.

plotEEGSignal(data, 'northwest', 0); %if you want to plot the EEG data
reducedSpectrogram(spikeMag, nyquistLimit, 0); %plot reduced spectrogram
sumOfBandPowers(spikeMag, nyquistLimit, 0);
%the zeros is to say that you don't plot it=
%this is for the actual analysis.
shortenedSpikeSpectrogram = spectrogram(shortenedData, window, [], [], samplingFrequency, 'yaxis');
shortenedSpikeMag = abs(shortenedSpikeSpectrogram);
shortenedSumOfBands = sumOfBandPowers(shortenedSpikeMag, nyquistLimit, 0);
percentages = sumOfBandsPercentage(shortenedSumOfBands);

% the percentages are finally returned=.