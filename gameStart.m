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

function arr = getFirstBlockQuiz()
    global trialTimes;
    arr = [];
    timeArr = repelem(trialTimes, 10);
    timeArr = shuffle(timeArr);
    for i = 1:40
        arr = [arr, Quiz(timeArr(i),randperm(2,1))];
    end
end

function arr = getSecondBlockQuiz()
    
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