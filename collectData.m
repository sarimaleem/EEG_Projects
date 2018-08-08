posPercentages = zeros(5, 5585);
negPercentages = zeros(5, 187252);
total = 0;

%get the positive c_259's
for ii = 1:3285
    load("c259_" + num2str(ii, '%05.f'));
    data = d(2, :);
    percentages = wt(data, 'db4');
    for jj = 1:5
        posPercentages(jj, ii) = percentages(1, jj);
    end
    if percentages(1) > 50
        disp(ii)
    end
    total = total +1;
    if mod(total, 1000) ==0
        disp(total)
    end 
end

%get the positive c_266
for ii = 1:35
    load("c266_" + num2str(ii, '%05.f'));
    data = d(2, :);
    percentages = wt(data, 'db4');
    for jj = 1:5
        posPercentages(jj, ii+3285) = percentages(1, jj);
    end
    total = total + 1;
end


%get the positive c_280
for ii = 1:7
    load("c280_" + num2str(ii, '%05.f'));
    data = d(2, :);
    percentages = wt(data, 'db4');
    for jj = 1:5
        posPercentages(jj, ii+3320) = percentages(1, jj);
    end
    total = total +1;
end

%get the positive c_282

for ii = 1:2258
    load("c282_" + num2str(ii, '%05.f'));
    data = d(2, :);
    percentages = wt(data, 'db4');
    for jj = 1:5
        posPercentages(jj, ii+3327) = percentages(1, jj);
    end
    total = total +1;
    if mod(total, 1000) == 0
        disp(total)
    end
end

%now we are going to collect all the negatives

for ii = 1:35872 % change
    load("259_" + num2str(ii, '%05.f')); %change
    data = d(2, :);
    percentages = wt(data, 'db4'); 
    for jj = 1:5
        negPercentages(jj, ii) = percentages(1, jj);% change
    end
    total = total +1;
    if mod(total, 1000) ==0
        disp(total)
    end 
end

%266's
for ii = 1:43478 % change
    load("266_" + num2str(ii, '%05.f')); %change
    data = d(2, :);
    percentages = wt(data, 'db4'); 
    for jj = 1:5
        negPercentages(jj, ii+35872) = percentages(1, jj);% change
    end
    total = total +1;
    if mod(total, 1000) ==0
        disp(total)
    end 
end

%280's
for ii = 1:52992 % change
    load("280_" + num2str(ii, '%05.f')); %change
    data = d(2, :);
    percentages = wt(data, 'db4'); 
    for jj = 1:5
        negPercentages(jj, ii+35872+43478) = percentages(1, jj);% change
    end
    total = total +1;
    if mod(total, 1000) ==0
        disp(total)
    end 
end

for ii = 1:54910 % change
    load("282_" + num2str(ii, '%05.f')); %change
    data = d(2, :);
    percentages = wt(data, 'db4'); 
    for jj = 1:5
        negPercentages(jj, ii+35872+43478+52992) = percentages(1, jj);% change
    end
    total = total +1;
    if mod(total, 1000) ==0
        disp(total)
    end 
end

figure
posDelta = posPercentages(1,:);
boxplot(posDelta)
title("positive Delta");

figure
negDelta = negPercentages(1, 1:132342);
boxplot(negDelta);
title("negative Delta");



