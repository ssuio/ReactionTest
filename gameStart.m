function gameStart(src,event)
    if strcmp(event.Key, 'space') == 1
        image(thinCross);
    end
    pause(5)
    showCross()
end



function showCross()
    global thickCross;
    image(thickCross);
    getTimeGap()
end

function t = randomPause()
    global trialTimeArr
    idx = randperm(length(trialTimeArr),1);
    t = trialTimeArr(idx);
    pause(t)
end

function arr = getFirstBlockQiz()
    global trialTimes;
    arr = [];
    timeArr = repelem(trialTimes, 10);
    timeArr = shuffle(timeArr);
    for i = 1:40
        arr = [arr, Quiz(timeArr(i),randperm(2,1))];
    end
end

function arr = getSecondBlockQiz()
    
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