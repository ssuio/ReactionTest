global trialTimes
trialTimes = [0.05, 0.1, 0.15, 0.2];

length(getFirstBlockQiz())



function arr = getFirstBlockQiz()
    global trialTimes;
    arr = [];
    timeArr = repelem(trialTimes, 10);
    timeArr = shuffle(timeArr);
    for i = 1:40
        arr = [arr, Quiz(timeArr(i),randperm(2,1))];
    end
end

function arr = shuffle(oldArr)
    l = length(oldArr);
    for i = 1:l
        rInt = randperm(l, 1);
        t = oldArr(i);
        oldArr(i) = oldArr(rInt);
        oldArr(rInt) = t;
    end
    arr = oldArr;
end