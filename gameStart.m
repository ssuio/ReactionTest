function gameStart(src,event)
    thinCross = imread('img\ThinCross.PNG');
    if strcmp(event.Key, 'space') == 1
        image(thinCross);
    end
    pause(5)
    showCross()
end

function showCross()
    thickCross = imread('img\ThickCross.PNG');
    image(thickCross)
end