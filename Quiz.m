classdef Quiz
   properties
      Time
      Pic
   end
   methods
      function obj = Quiz(time, pic)
        obj.Time = time;
        obj.Pic = pic;
      end
   end
end