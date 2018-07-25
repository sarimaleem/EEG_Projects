data = file(:, 2:size(file, 2));
data = table2array(data);
indicies = data(2, :);
positive = indicies == 1;
sleep = indicies == 0;
artifact = indicies == -1;

posDelta = data(3, positive);
sleepDelta = data(3, sleep);
artifactDelta = data(3, artifact);
comDelta = [posDelta; sleepDelta; artifactDelta]';
nameDelta = ["Delta spike"; "Delta sleep"; "Delta artifact"];

posTheta = data(4, positive);
sleepTheta = data(4, sleep);
artifactTheta = data(4, artifact);
comTheta = [posTheta; sleepTheta; artifactTheta]';
nameTheta = ["Theta spike"; "Theta sleep"; "Theta artifact"];

posAlpha = data(5, positive);
sleepAlpha = data(5, sleep);
artifactAlpha = data(5, artifact);
comAlpha = [posAlpha; sleepAlpha; artifactAlpha]';
nameAlpha = ["Alpha spike"; "Alpha sleep"; "Alpha artifact"];

posBeta = data(6, positive);
sleepBeta = data(6, sleep);
artifactBeta = data(6, artifact);
comBeta = [posBeta; sleepBeta; artifactBeta]';
nameBeta = ["Beta spike"; "Betasleep"; "Beta artifact"];

posGamma = data(7, positive);
sleepGamma = data(7, sleep);
artifactGamma = data(7, artifact);
comGamma = [posGamma; sleepGamma; artifactGamma]';
nameGamma = ["Gamma spike"; "Gamma sleep"; "Gamma artifact"];

figure
boxplot(comDelta, nameDelta);
figure
boxplot(comTheta, nameTheta);
figure
boxplot(comAlpha, nameAlpha);
figure
boxplot(comBeta, nameBeta);
figure
boxplot(comGamma, nameGamma);















