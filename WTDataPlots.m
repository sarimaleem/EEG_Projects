% PLOT DELTA

wavType = "db8";
%m = db4data;
[comData, nameData, Title] = analyzeWTData("Delta", m, wavType);
boxplotWT(comData, nameData, Title, 1);
[h, p] = ttest(comData(:, 1), comData(:, 2))


[comData, nameData, Title] = analyzeWTData("Theta", m, wavType);
boxplotWT(comData, nameData, Title, 1);
[h, p] = ttest(comData(:, 1), comData(:, 2))

[comData, nameData, Title] = analyzeWTData("Alpha", m, wavType);
boxplotWT(comData, nameData, Title, 1);
[h, p] = ttest(comData(:, 1), comData(:, 2))

[comData, nameData, Title] = analyzeWTData("Beta", m, wavType);
boxplotWT(comData, nameData, Title, 1);
[h, p] = ttest(comData(:, 1), comData(:, 2))

[comData, nameData, Title] = analyzeWTData("Gamma", m, wavType);
boxplotWT(comData, nameData, Title, 1);
[h, p] = ttest(comData(:, 1), comData(:, 2))
