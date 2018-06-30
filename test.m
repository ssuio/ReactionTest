[img, ~, ~] = imread('img\overtime.PNG');
[w, react]= Screen('OpenWindow',0,0, [0 0 1024 768]);
Screen('PutImage', w, img);
Screen('Flip',w);

while true
    [a,b,c,d] = GetClicks
    if d==1
        break;
    end
end