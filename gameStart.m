function gameStart(src,event)
    thinCross = imread('img\ThinCross.PNG');
    if strcmp(event.Key, 'space') == 1, image(thinCross)
end

