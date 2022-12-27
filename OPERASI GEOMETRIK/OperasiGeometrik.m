function varargout = OperasiGeometrik(varargin)
% OPERASIGEOMETRIK MATLAB code for OperasiGeometrik.fig
%      OPERASIGEOMETRIK, by itself, creates a new OPERASIGEOMETRIK or raises the existing
%      singleton*.
%
%      H = OPERASIGEOMETRIK returns the handle to a new OPERASIGEOMETRIK or the handle to
%      the existing singleton*.
%
%      OPERASIGEOMETRIK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPERASIGEOMETRIK.M with the given input arguments.
%
%      OPERASIGEOMETRIK('Property','Value',...) creates a new OPERASIGEOMETRIK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OperasiGeometrik_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OperasiGeometrik_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OperasiGeometrik

% Last Modified by GUIDE v2.5 29-Oct-2022 17:33:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OperasiGeometrik_OpeningFcn, ...
                   'gui_OutputFcn',  @OperasiGeometrik_OutputFcn, ...
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


% --- Executes just before OperasiGeometrik is made visible.
function OperasiGeometrik_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OperasiGeometrik (see VARARGIN)

% Choose default command line output for OperasiGeometrik
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OperasiGeometrik wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = OperasiGeometrik_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
open = guidata(gcbo);
[nmfile] = uigetfile({'*.png;*.jpg;*.jpeg'});
foto1 = imread(nmfile);
fotoGray = rgb2gray(foto1);
set(open.figure1, 'CurrentAxes', open.axes1);
set(imagesc(fotoGray));
colormap(gray);
set(open.axes1, 'Userdata', fotoGray);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
open = guidata(gcbo);
Tx = 4;
Ty = 5;
C = get(open.axes1, 'Userdata'); 
[r c] = size(C);
for x = 1 : r
    for y = 1 : c
        D(x+Tx, y+Ty) = C(x,y);
    end
end
set(open.figure1, 'CurrentAxes', open.axes2);
set(imagesc(D));
colormap(gray);
set(open.axes2, 'Userdata', D);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
open = guidata(gcbo);
foto3 = get(open.axes1, 'Userdata');
fotocrop = imcrop(foto3, [50 50 150 150]);
set(open.figure1, 'CurrentAxes', open.axes3);
set(imagesc(fotocrop));
colormap(gray);
set(open.axes3, 'Userdata', foto3);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
open = guidata(gcbo);
foto4 = get(open.axes1, 'Userdata');
[r c] = size(foto4);
for x = 1 : r
    for y = 1 : c
        D(x, y) = foto4((r-x)+1, y);
    end
end
set(open.figure1, 'CurrentAxes', open.axes4);
set(imagesc(D));
colormap(gray);
set(open.axes4, 'Userdata', D);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
open = guidata(gcbo);
foto5 = get(open.axes1, 'Userdata');
theta = 45;
putar = imrotate(foto5, theta);
set(open.figure1, 'CurrentAxes', open.axes5);
set(imagesc(putar));
colormap(gray);
set(open.axes5, 'Userdata', putar);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
open = guidata(gcbo);
foto6 = get(open.axes1, 'Userdata');
shx = 2;
shy = 5;
m = size(foto6);
n = size(foto6);
r = m * shx;
c = n * shy;
for x = 1 : m
    for y = 1 : n
        J((x-1)*shx+1 : x*shx, (y-1)*shy+1 : y*shy) = foto6(x,y);
    end
end
set(open.figure1, 'CurrentAxes', open.axes6);
set(imagesc(J));
colormap(gray);
set(open.axes6, 'Userdata', J);
        
