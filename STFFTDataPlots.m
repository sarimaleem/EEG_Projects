% PLOT DELTA
[comData, nameData, Title] = analyzeSTFFTData("Delta", STFFTData);
boxplotSTFFT(comData, nameData, Title, 1);

[comData, nameData, Title] = analyzeSTFFTData("Theta", STFFTData);
boxplotSTFFT(comData, nameData, Title, 1);

[comData, nameData, Title] = analyzeSTFFTData("Alpha", STFFTData);
boxplotSTFFT(comData, nameData, Title, 1);

[comData, nameData, Title] = analyzeSTFFTData("Beta", STFFTData);
boxplotSTFFT(comData, nameData, Title, 1);

[comData, nameData, Title] = analyzeSTFFTData("Gamma", STFFTData);
boxplotSTFFT(comData, nameData, Title, 1);
