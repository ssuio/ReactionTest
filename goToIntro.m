function goToIntro()
    introductionImg = imread('img\introduction.JPG');
    fprintf('Go to intro!\n')
    image(introductionImg)
    set(gcf,'KeyPressFcn',@gameStart);
end

