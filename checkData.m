data = d;

figure
plot(data(1, :));
title('Channel 1');
xlabel('Time');
ylabel('Amplitude');
movegui('northwest');

figure
plot(data(2, :));
title('Channel 2');
xlabel('Time');
ylabel('Amplitude');
movegui('north');

figure
plot(data(3, :));
title('Channel 3');
xlabel('Time');
ylabel('Amplitude');
movegui('northeast');