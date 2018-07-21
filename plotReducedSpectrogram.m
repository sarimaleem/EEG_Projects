function plotReducedSpectrogram(spikeMag, nyquistLimit)

%this function just plots the the frequency of each wave below 100 hertz

ratio = nyquistLimit/size(spikeMag, 1);
gammarow = round(100/ratio);
reducedSpikeMag = spikeMag(1:gammarow, :);

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

spectroheat.YData = flip(spectroheatlabels);
movegui('north');

end
