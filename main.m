%Declare img/variables/constants
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
global correctImg
correctImg = imread('img\correct.PNG');
global resultAverageTimeImg
resultAverageTimeImg = imread('img\resultAverageTime.PNG');
global trialTimes
trialTimes = [0.05, 0.1, 0.15, 0.2];
global showTime
showTime = 0.6;
global records
records = [];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% START

% lauch app
openApp();

% mouse-click to go to introduction
waitForMouseClick();
goToIntro();

% Space to start block1
waitForSpacePress();
result = GameHelper.startFirstBlock();

%if ~strcmp(result,'pass')
    % Space to start block2
    %goToIntro2();
    %waitForSpacePress();
    %GameHelper.startSecondBlock();
%end

% Write result to result.csv
writeResult();

% END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function openApp()
axis([0 1 0 1]);
global startMenuImg
GameHelper.uiRouter(startMenuImg)
end

function waitForMouseClick()
next = 1;
while(next ~= 0)
    next = waitforbuttonpress;
end
end

function goToIntro()
global introductionImg;
GameHelper.uiRouter(introductionImg);
end

function goToIntro2()
global introduction2Img;
GameHelper.uiRouter(introduction2Img);
end

function waitForSpacePress()
while true
    w = waitforbuttonpress;
    switch w
        case 1 % (keyboard press)
            key = get(gcf,'currentcharacter');
            if key == ' '
                break;
            end
    end
end
end

function writeResult()
global records
fid = fopen('result\result.csv', 'w');
fprintf(fid, '%s', join(records));
fclose(fid);
end