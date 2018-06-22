global startMenuImg
startMenuImg = imread('img\startMenu.PNG');
global introductionImg
introductionImg = imread('img\introduction.JPG');
global introduction2Img
introduction2Img = imread('img\introduction2.PNG');
global thinCrossImg
thinCrossImg = imread('img\ThinCross.PNG');
global thickCrossImg
thickCrossImg = imread('img\ThickCross.PNG');
global goLeftImg
goLeftImg = imread('img\left.JPG');
global goRightImg
goRightImg = imread('img\right.JPG');
global nonRightImg
nonRightImg = imread('img\nonRight.PNG');
global nonLeftImg
nonLeftImg = imread('img\nonRight.PNG');
global wrongBtnImg
wrongBtnImg = imread('img\wrongBtn.PNG');
global dontTypeImg
dontTypeImg = imread('img\dontType.PNG');
global trialTimes
trialTimes = [0.05, 0.1, 0.15, 0.2];
global showTime
showTime = 0.6;

q = Quiz;
init();
axis([0 1 0 1]);
box on;
axis off;
uiRouter(startMenuImg)
set(gcf, 'WindowButtonDownFcn', @goToIntro);

function init()
    
end

function goToIntro(src,event)
    % Unbind click event
    set(gcf, 'WindowButtonDownFcn', []);
    global introductionImg
    fprintf('Go to intro!\n')
    image(introductionImg)
    set(gcf,'KeyPressFcn',@gameStart);
end

function t = getTimeGap()
    global trialTimeArr
    idx = randperm(length(trialTimeArr),1);
    t = trialTimeArr(idx);
end