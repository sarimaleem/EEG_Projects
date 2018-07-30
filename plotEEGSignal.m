function plotEEGData(data, location, plot)
if plot == 1
figure
plot(data);
title('EEG data plot');
xlabel('Time');
ylabel('Amplitude');
movegui(location);
end
end
