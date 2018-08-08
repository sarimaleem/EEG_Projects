function [comData, nameData, Title] = analyzeWTData(signalType, file, wavType)

data = file;
indicies = data(1, :);
positive = indicies == 1;
sleep = indicies == 0;
artifact = indicies == -1;

if signalType == "Delta"
posDelta = data(2, positive);
sleepDelta = data(2, sleep);
artifactDelta = data(2, artifact);
comData = [posDelta; sleepDelta; artifactDelta]';
nameData = ["Delta spike"; "Delta sleep"; "Delta artifact"];
Title = "Delta " + wavType;
end

if signalType == "Theta"
posTheta = data(3, positive);
sleepTheta = data(3, sleep);
artifactTheta = data(3, artifact);
comData = [posTheta; sleepTheta; artifactTheta]';
nameData = ["Theta spike"; "Theta sleep"; "Theta artifact"];
Title = "Theta " + wavType;
end

if signalType == "Alpha"
posAlpha = data(4, positive);
sleepAlpha = data(4, sleep);
artifactAlpha = data(4, artifact);
comData = [posAlpha; sleepAlpha; artifactAlpha]';
nameData = ["Alpha spike"; "Alpha sleep"; "Alpha artifact"];
Title = "Alpha " + wavType;
end

if signalType == "Beta"
posBeta = data(5, positive);
sleepBeta = data(5, sleep);
artifactBeta = data(5, artifact);
comData = [posBeta; sleepBeta; artifactBeta]';
nameData = ["Beta spike"; "Beta sleep"; "Beta artifact"];
Title = "Beta " + wavType;
end

if signalType == "Gamma"
posGamma = data(6, positive);
sleepGamma = data(6, sleep);
artifactGamma = data(6, artifact);
comData = [posGamma; sleepGamma; artifactGamma]';
nameData = ["Gamma spike"; "Gamma sleep"; "Gamma artifact"];
Title = "Gamma " + wavType;
end

end