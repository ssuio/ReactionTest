function tmouse(action)
% TMOUSE ���Үi�ܦp��HHandle Graphics??�w�ƹ��ƥ�(Mouse
% Events)����?���O(Callbacks)
if nargin == 0, action = 'start'; end
 switch(action)
  % ???��?��
  case 'start',
   axis([0 1 0 1]);% ?�w??�S?
   box on;% ???�[�W?��
   title('Click and drag your mouse in this window!');
   % ?�w�ƹ���?�Q���U?����?���O?�utmouse down�v
   set(gcf, 'WindowButtonDownFcn', 'tmouse down');
  % �ƹ���?�Q���U?����?���O
  case 'down',
   % ?�w�ƹ���??����?���O?�utmouse move�v
   set(gcf, 'WindowButtonMotionFcn', 'tmouse move');
   % ?�w�ƹ���?�Q?��?����?���O?�utmouse up�v
   set(gcf, 'WindowButtonUpFcn', 'tmouse up');
   % �C�L�uMouse down!�v?��
   fprintf('Mouse down!\n');
  % �ƹ���??����?���O
  case 'move',
   currPt = get(gca, 'CurrentPoint');
   x = currPt(1,1);
   y = currPt(1,2);
   line(x, y, 'marker', '.', 'EraseMode', 'xor');
   % �C�L�uMouse is moving!�v?���ηƹ�?�b��m
   fprintf('Mouse is moving! Current location = (%g, %g)\n', currPt(1,1), currPt(1,2));
  % �ƹ���?�Q?��?����?���O
  case 'up',
   % �M���ƹ���??����?���O
   set(gcf, 'WindowButtonMotionFcn', '');
   % �M���ƹ���?�Q?��?����?���O
   set(gcf, 'WindowButtonUpFcn', '');
   % �C�L�uMouse up!�v?��
   fprintf('Mouse up!\n');
 end