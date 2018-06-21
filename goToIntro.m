function goToIntro(src,event)
    set(gcf, 'WindowButtonDownFcn', []);
    introductionImg = imread('img\introduction.JPG');
    fprintf('Go to intro!\n')
    image(introductionImg)
    set(gcf,'KeyPressFcn',@gameStart);
end

