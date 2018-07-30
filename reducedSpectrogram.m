function reducedSpectrogram(spikeMag, nyquistLimit, plot)

%this function just plots the the 
%frequency of each wave below 100 hertz - which is the gamma band

ratio = nyquistLimit/size(spikeMag, 1);
gammarow = round(100/ratio);
reducedSpikeMag = spikeMag(1:gammarow, :);

if plot == 1
figure
spectroheat = heatmap(flipud(reducedSpikeMag));
spectroheat.GridVisible = 'off';
spectroheat.Colormap = hot;
spectroheat.Title = 'Spike Spectrogram';
spectroheat.YLabel = 'Frequency (Hertz)';
spectroheatlabels = zeros([1, gammarow]);

for ii = 1:gammarow
spectroheatlabels(ii) = ratio*ii;
end

spectroheat.YDisplayData = flip(spectroheatlabels);
movegui('north');
end
end