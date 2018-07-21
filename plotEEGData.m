function plotEEGData(data)

figure
plot(data);
title('EEG data plot');
xlabel('Time');
ylabel('Amplitude');
movegui('northeast');

end

