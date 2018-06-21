function tmouse(action)
% TMOUSE 本例展示如何以Handle Graphics??定滑鼠事件(Mouse
% Events)的反?指令(Callbacks)
if nargin == 0, action = 'start'; end
 switch(action)
  % ???形?窗
  case 'start',
   axis([0 1 0 1]);% ?定??范?
   box on;% ???加上?框
   title('Click and drag your mouse in this window!');
   % ?定滑鼠按?被按下?的反?指令?「tmouse down」
   set(gcf, 'WindowButtonDownFcn', 'tmouse down');
  % 滑鼠按?被按下?的反?指令
  case 'down',
   % ?定滑鼠移??的反?指令?「tmouse move」
   set(gcf, 'WindowButtonMotionFcn', 'tmouse move');
   % ?定滑鼠按?被?放?的反?指令?「tmouse up」
   set(gcf, 'WindowButtonUpFcn', 'tmouse up');
   % 列印「Mouse down!」?息
   fprintf('Mouse down!\n');
  % 滑鼠移??的反?指令
  case 'move',
   currPt = get(gca, 'CurrentPoint');
   x = currPt(1,1);
   y = currPt(1,2);
   line(x, y, 'marker', '.', 'EraseMode', 'xor');
   % 列印「Mouse is moving!」?息及滑鼠?在位置
   fprintf('Mouse is moving! Current location = (%g, %g)\n', currPt(1,1), currPt(1,2));
  % 滑鼠按?被?放?的反?指令
  case 'up',
   % 清除滑鼠移??的反?指令
   set(gcf, 'WindowButtonMotionFcn', '');
   % 清除滑鼠按?被?放?的反?指令
   set(gcf, 'WindowButtonUpFcn', '');
   % 列印「Mouse up!」?息
   fprintf('Mouse up!\n');
 end