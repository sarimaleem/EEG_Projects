function plotEEGData(data, location)

figure
plot(data);
title('EEG data plot');
xlabel('Time');
ylabel('Amplitude');
movegui(location);

end
