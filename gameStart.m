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