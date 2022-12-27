function varargout = program_operasi_citra(varargin)
% PROGRAM_OPERASI_CITRA MATLAB code for program_operasi_citra.fig
%      PROGRAM_OPERASI_CITRA, by itself, creates a new PROGRAM_OPERASI_CITRA or raises the existing
%      singleton*.
%
%      H = PROGRAM_OPERASI_CITRA returns the handle to a new PROGRAM_OPERASI_CITRA or the handle to
%      the existing singleton*.
%
%      PROGRAM_OPERASI_CITRA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROGRAM_OPERASI_CITRA.M with the given input arguments.
%
%      PROGRAM_OPERASI_CITRA('Property','Value',...) creates a new PROGRAM_OPERASI_CITRA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before program_operasi_citra_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to program_operasi_citra_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help program_operasi_citra

% Last Modified by GUIDE v2.5 23-Oct-2022 07:20:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @program_operasi_citra_OpeningFcn, ...
                   'gui_OutputFcn',  @program_operasi_citra_OutputFcn, ...
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


% --- Executes just before program_operasi_citra is made visible.
function program_operasi_citra_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to program_operasi_citra (see VARARGIN)

% Choose default command line output for program_operasi_citra
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes program_operasi_citra wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = program_operasi_citra_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
open=guidata(gcbo);
A=double(get(open.axes1,'Userdata'));
J=double(get(open.axes2,'Userdata'));
wa = 0.7;
wb = 0.3;
[r1 c1] = size(A);
[r2 c2] = size(J);
if (r1 ==r2) && (c1 == c2)
 for x = 1 : r1
  for y = 1 : c1
    I(x,y) = A(x,y)*wa+J(x,y)*wb;
  end
 end
   end
J = clipping(I);
set(open.figure1,'CurrentAxes',open.axes3);
set(imagesc(I));colormap('gray');
set(open.axes1,'Userdata',I);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
open = guidata(gcbo);
[nmFile] = uigetfile({'*.png;*.jpg;*.jpeg;*.tif'});
fotoRidho = imread(nmFile);
set(open.figure1, 'CurrentAxes', open.axes1);
set(imagesc(fotoRidho));
colormap('gray');
set(open.axes1, 'Userdata', fotoRidho);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
open = guidata(gcbo);
[nmFile2] = uigetfile({'*.png;*.jpeg;*.jpg;*.tif'});
fotoSego = imread(nmFile2);
set(open.figure1, 'CurrentAxes', open.axes2);
set(imagesc(fotoSego));
colormap('gray');
set(open.axes2, 'Userdata', fotoSego);
