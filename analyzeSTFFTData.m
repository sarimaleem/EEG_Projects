function [comData, nameData, Title] = analyzeSTFFTData(signalType, file)

data = file(:, 2:size(file, 2));
data = table2array(data);
indicies = data(2, :);
positive = indicies == 1;
sleep = indicies == 0;
artifact = indicies == -1;

if signalType == "Delta"
posDelta = data(3, positive);
sleepDelta = data(3, sleep);
artifactDelta = data(3, artifact);
comData = [posDelta; sleepDelta; artifactDelta]';
nameData = ["Delta spike"; "Delta sleep"; "Delta artifact"];
Title = "Delta Plot";
end

if signalType == "Theta"
posTheta = data(4, positive);
sleepTheta = data(4, sleep);
artifactTheta = data(4, artifact);
comData = [posTheta; sleepTheta; artifactTheta]';
nameData = ["Theta spike"; "Theta sleep"; "Theta artifact"];
Title = "Theta Plot";
end

if signalType == "Alpha"
posAlpha = data(5, positive);
sleepAlpha = data(5, sleep);
artifactAlpha = data(5, artifact);
comData = [posAlpha; sleepAlpha; artifactAlpha]';
nameData = ["Alpha spike"; "Alpha sleep"; "Alpha artifact"];
Title = "Alpha Plot";
end

if signalType == "Beta"
posBeta = data(6, positive);
sleepBeta = data(6, sleep);
artifactBeta = data(6, artifact);
comData = [posBeta; sleepBeta; artifactBeta]';
nameData = ["Beta spike"; "Betasleep"; "Beta artifact"];
Title = "Beta Plot";
end

if signalType == "Gamma"
posGamma = data(7, positive);
sleepGamma = data(7, sleep);
artifactGamma = data(7, artifact);
comData = [posGamma; sleepGamma; artifactGamma]';
nameData = ["Gamma spike"; "Gamma sleep"; "Gamma artifact"];
Title = "Gamma Plot";
end

end

















