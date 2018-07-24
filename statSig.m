data = file(:, 2:size(file, 2));
data = table2array(data);
positive = data(2, :);
positive = positive == 1;
negative = positive == 0;

posDelta = data(3, positive);
negDelta = data(3, negative);
posTheta = data(4, positive);
negTheta = data(4, negative);
posAlpha = data(5, positive);
negAlpha = data(5, negative);
posBeta = data(6, positive);
negBeta = data(6, negative);
posGamma = data(7, positive);
negGamma = data(7, negative);