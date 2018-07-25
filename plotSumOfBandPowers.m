function sumOfBands = plotSumOfBandPowers(spikeMag, nyquistLimit, plot)

%MATLAB is retarded, basically, for future me, what it does is that instead
%of dividing the spectrogram matrix into rows with each row corresponding
%to a frequency of 1 hertz, it does this weird stuff which i don't know how
%it works, but basically the larger the sampling frequency the more rows
%and vice versa, so i have to find the delta theta alpha beta gamma rows
%based on that which will have to be the ratio of the rows to the the
%spectrogram rows divided by whatever the frequency is supposed to be for
%the bands which i'll have to find right now.

%The spectrogram goes to half the sampling frequency also known as the
%nyquistlimit but the rows of the spectrogram is usually less than that
%depending on the window you choose. for example 1 row can correspond to
%the power of the frequency between 0 and 2.4 hz. anyway, we have to scale
%it up which is also what I was explaining above i dont think i was clear
%though.
    
ratio = nyquistLimit/size(spikeMag, 1);
deltarow = round(4/ratio);
thetarow = round(7/ratio);
alpharow = round(15/ratio);
betarow = round(31/ratio);
gammarow = round(100/ratio);
timeUnits = size(spikeMag, 2);

sumOfBands = zeros([5 timeUnits]); % 5 because of the 5 bands

for ii = 1:timeUnits
    sumOfBands(1, ii) = sum(spikeMag(1:deltarow, ii)); %Delta
    sumOfBands(2, ii) = sum(spikeMag(deltarow+1:thetarow, ii)); %Theta
    sumOfBands(3, ii) = sum(spikeMag(thetarow+1:alpharow, ii)); %Alpha
    sumOfBands(4, ii) = sum(spikeMag(alpharow+1:betarow, ii)); %Beta
    sumOfBands(5, ii) = sum(spikeMag(betarow+1:gammarow, ii)); %Gamma
end


if plot == 1 %This is because sometimes I don't want to plot my result.
figure
bandheat = heatmap(flipud(sumOfBands));
bandheat.GridVisible = 'off';
bandheat.Colormap = hot;
bandheat.Title = 'Sum of Band Of Power';
bandheat.YData = ["Gamma" "Beta" "Alpha" "Theta" "Delta"];
bandheat.YLabel = 'Bands';
bandheat.XLabel = 'Time';
movegui('northwest');
end


end