classdef GameHelper
    properties
    end
    methods(Static)
        function uiRouter(img)
            global mainview
            Screen('PutImage', mainview, img);
            Screen('Flip',mainview);
        end
        function arr = startFirstBlock()
            arr = GameHelper.getFirstBlockQuiz();
            for i = 1 : length(arr)
                startQuiz(arr(i), i);
            end
            showAverageReactTime();
        end
        function arr = startSecondBlock()
            global thinCrossImg
            GameHelper.uiRouter(thinCrossImg)
        end
        function arr = getFirstBlockQuiz()
            global trialTimes;
            arr = [];
            timeArr = repelem(trialTimes, 10);
            timeArr = GameHelper.shuffle(timeArr);
            for i = 1:40
                arr = [arr, Quiz(timeArr(i),randperm(2,1))];
            end
        end
        function arr = getSecondBlockQuiz()
            global trialTimes;
            arr = [];
            timeArr = repelem(trialTimes, 20);
            timeArr = GameHelper.shuffle(timeArr);
            for i = 1:80
                arr = [arr, Quiz(timeArr(i),randperm(4,1))];
            end
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
        function record(trialNo, blockNo, trialType, arrowDirection, delayTime, btnOfResponse, responseTime)
            global records
            records = [records, sprintf('%d, %d, %d, %d, %d, %d, %d\n', trialNo, blockNo, trialType, arrowDirection, delayTime, btnOfResponse,responseTime)];
        end
    end
end

function startQuiz(quiz, idx)
global showTime
global res
res = 0;
global qPic
qPic = quiz.Pic;
global reactTime
reactTime = -1;

beforeQuiz();
tic();
set(gcf,'WindowKeyPressFcn',@listenKbPress);
pause(quiz.Time);
showQuiz(qPic);
pause(showTime)
if reactTime == -1
    reactTime = 0;
end
GameHelper.record(idx, 1, 1, qPic, quiz.Time, res, reactTime);
end

function beforeQuiz()
global thinCrossImg
GameHelper.uiRouter(thinCrossImg);
pause(0.6);
global thickCrossImg
GameHelper.uiRouter(thickCrossImg);
end

function showQuiz(pic)
global goLeftImg
global goRightImg
global nonLeftImg
global nonRightImg

switch pic
    case 1
        img = goLeftImg;
    case 2
        img = goRightImg;
    case 3
        img = nonLeftImg;
    case 4
        img = nonRightImg;
end
GameHelper.uiRouter(img);
end

function listenKbPress(src, event)
global correctImg
global wrongBtnImg
global res
global qPic
global reactTime
reactTime = toc();
if event.Key == 'b'
    res = 1;
elseif event.Key == 'n'
    res = 2;
end
if qPic == res
    GameHelper.uiRouter(correctImg)
else
    GameHelper.uiRouter(wrongBtnImg)
end
blockKbPress();
end

function blockKbPress()
set(gcf,'WindowKeyPressFcn',@doNothing);
end

function doNothing(src, event)
disp('Prevent focus command window');
end

function showAverageReactTime()
    global resultAverageTimeImg
    GameHelper.uiRouter(resultAverageTimeImg);
end