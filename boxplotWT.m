function boxplotWT(comData, nameData, Title, plot)

if plot == 1

figure
boxplot(comData, nameData)
title(Title);
xlabel("Wave Type");
ylabel("Percentage Span");

end
end