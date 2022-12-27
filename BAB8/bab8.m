function varargout = bab8(varargin)
% BAB8 MATLAB code for bab8.fig
%      BAB8, by itself, creates a new BAB8 or raises the existing
%      singleton*.
%
%      H = BAB8 returns the handle to a new BAB8 or the handle to
%      the existing singleton*.
%
%      BAB8('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BAB8.M with the given input arguments.
%
%      BAB8('Property','Value',...) creates a new BAB8 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bab8_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bab8_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bab8

% Last Modified by GUIDE v2.5 04-Dec-2022 20:59:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bab8_OpeningFcn, ...
                   'gui_OutputFcn',  @bab8_OutputFcn, ...
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


% --- Executes just before bab8 is made visible.
function bab8_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bab8 (see VARARGIN)

% Choose default command line output for bab8
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bab8 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bab8_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
open = guidata(gcbo);
[namaFile] = uigetfile({'*.jpg;*.bmp;*.tif; *.png'}, 'openimage');
I = imread(namaFile);
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));colormap('gray');
set(open.axes1,'Userdata',I);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
open = guidata(gcbo)
I=get(open.axes1,'Userdata');
gray=rgb2gray(I);
rb = edge(gray,'roberts');
set(open.figure1,'CurrentAxes',open.axes2);
set(imagesc(rb));
colormap('gray');
set(open.axes2,'Userdata',rb);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
open = guidata(gcbo)
I=get(open.axes1,'Userdata');
gray=rgb2gray(I);
rb2 = edge(gray,'prewitt');
set(open.figure1,'CurrentAxes',open.axes3);
set(imagesc(rb2));
colormap('gray');
set(open.axes3,'Userdata',rb2);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
open = guidata(gcbo)
I=get(open.axes1,'Userdata');
gray=rgb2gray(I);
rb3 = edge(gray,'sobel');
set(open.figure1,'CurrentAxes',open.axes4);
set(imagesc(rb3));
colormap('gray');
set(open.axes4,'Userdata',rb3);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
open = guidata(gcbo)
I=get(open.axes1,'Userdata');
gray=rgb2gray(I);
rb4 = edge(gray,'log');
set(open.figure1,'CurrentAxes',open.axes5);
set(imagesc(rb4));
colormap('gray');
set(open.axes5,'Userdata',rb4);
