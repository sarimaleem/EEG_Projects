data = d;

figure('units','normalized','outerposition',[0 0 1 1]); %make is full screen
%press esc to quickly zoom out from data

subplot(3, 1, 1);
plot(data(1, :));
title('Channel 1');
xlabel('Time');
ylabel('Amplitude');

subplot(3, 1, 2);
plot(data(2, :));
title('Channel 2');
xlabel('Time');
ylabel('Amplitude');

subplot(3, 1, 3);
plot(data(3, :));
title('Channel 3');
xlabel('Time');
ylabel('Amplitude');