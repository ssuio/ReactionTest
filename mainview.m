function varargout = app(varargin)
% MAINVIEW MATLAB code for mainview.fig
%      MAINVIEW, by itself, creates a new MAINVIEW or raises the existing
%      singleton*.
%
%      H = MAINVIEW returns the handle to a new MAINVIEW or the handle to
%      the existing singleton*.
%
%      MAINVIEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINVIEW.M with the given input arguments.
%
%      MAINVIEW('Property','Value',...) creates a new MAINVIEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mainview_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mainview_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mainview

% Last Modified by GUIDE v2.5 20-Jun-2018 09:53:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mainview_OpeningFcn, ...
                   'gui_OutputFcn',  @mainview_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before mainview is made visible.
function mainview_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mainview (see VARARGIN)

% Choose default command line output for mainview
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
%Init
global 
axes(handles.introduction)
matlabImage = imread('img\startMenu.PNG');
image(matlabImage)
axis off
axis image


% UIWAIT makes mainview wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = mainview_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in solve.
function solve_Callback(hObject, eventdata, handles)
% hObject    handle to solve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%introduction=imread('img\introduction.JPG'); 
%imshow(introduction)
axes(handles.introduction)
matlabImage = imread('img\left.JPG');
image(matlabImage)
axis off
axis image
set(handles.consolelog, 'String', 'left');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.introduction)
matlabImage = imread('img\right.JPG');
image(matlabImage)
axis off
axis image
set(handles.consolelog, 'String', 'right');
