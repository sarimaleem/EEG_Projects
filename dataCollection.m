wavType = 'db4';
m = zeros(6, 93);

for ii = 1:93
    m(1, ii) = EEGMatrix(1, ii);
end

for ii = 1:93
    size = EEGMatrix(2, ii);
    data = EEGMatrix(3:size+3, ii);
    data = data';
    percentages = wt(data, wavType);
    for jj = 1:5
        m(jj+1, ii) = percentages(1, jj);
    end
end
    