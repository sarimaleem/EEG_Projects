posDelta = posPercentages(1, :);
negDelta = negPercentages(1, :);
figure
boxplot(posDelta);
title("positive delta");
figure
boxplot(negDelta);
title("negative delta");

posTheta = posPercentages(2, :);
negTheta = negPercentages(2, :);
figure
boxplot(posTheta);
title("positive theta");
figure
boxplot(negTheta);
title("negative theta");

posAlpha = posPercentages(3, :);
negAlpha = negPercentages(3, :);
figure
boxplot(posAlpha);
title("positive alpha");
figure
boxplot(negAlpha);
title("negative alpha");


posBeta = posPercentages(4, :);
negBeta = negPercentages(4, :);
figure
boxplot(posBeta);
title("positive beta");
figure
boxplot(negBeta);
title("negative beta");

posGamma = posPercentages(5, :);
negGamma = negPercentages(5, :);
figure
boxplot(posGamma);
title("positive gamma");
figure
boxplot(negGamma);
title("negative gamma");
close all

sum(negDelta > 50 | negTheta > 40 | negAlpha > 45 | negGamma > 38)