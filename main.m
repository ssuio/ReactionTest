global startMenuImg
startMenuImg = imread('img\startMenu.PNG');
global introductionImg
introductionImg = imread('img\introduction.JPG');

axis([0 1 0 1]);
box on;
axis off;
uiRouter(startMenuImg)
set(gcf, 'WindowButtonDownFcn', @goToIntro);