function varargout = Guide_TugasPertemuan5(varargin)
% GUIDE_TUGASPERTEMUAN5 MATLAB code for Guide_TugasPertemuan5.fig
%      GUIDE_TUGASPERTEMUAN5, by itself, creates a new GUIDE_TUGASPERTEMUAN5 or raises the existing
%      singleton*.
%
%      H = GUIDE_TUGASPERTEMUAN5 returns the handle to a new GUIDE_TUGASPERTEMUAN5 or the handle to
%      the existing singleton*.
%
%      GUIDE_TUGASPERTEMUAN5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIDE_TUGASPERTEMUAN5.M with the given input arguments.
%
%      GUIDE_TUGASPERTEMUAN5('Property','Value',...) creates a new GUIDE_TUGASPERTEMUAN5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Guide_TugasPertemuan5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Guide_TugasPertemuan5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Guide_TugasPertemuan5

% Last Modified by GUIDE v2.5 29-Sep-2021 01:11:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Guide_TugasPertemuan5_OpeningFcn, ...
                   'gui_OutputFcn',  @Guide_TugasPertemuan5_OutputFcn, ...
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


% --- Executes just before Guide_TugasPertemuan5 is made visible.
function Guide_TugasPertemuan5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Guide_TugasPertemuan5 (see VARARGIN)

% Choose default command line output for Guide_TugasPertemuan5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

global n;
global u;

Picture1 = imread('white.png');
Picture2 = imread('black.png');

n = rgb2gray(Picture1);
u = rgb2gray(Picture2)

axes(handles.axes1);
imshow(n);

axes(handles.axes2)
imshow(u);


% --- Outputs from this function are returned to the command line.
function varargout = Guide_TugasPertemuan5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% TOMBOL PENJUMLAHAN.
function pushbutton1_Callback(hObject, eventdata, handles)
global n;
global u;
axes(handles.axes1);
imshow(n);
axes(handles.axes2);
imshow(u);

axes(handles.axes3);
imshow(n + 150);

% TOMBOL PENGURANGAN
function pushbutton2_Callback(hObject, eventdata, handles)
global n;
global u;
axes(handles.axes1);
imshow(n);
axes(handles.axes2);
imshow(u);

axes(handles.axes3);
imshow(n - 50);

% TOMBOL PERKALIAN
function pushbutton3_Callback(hObject, eventdata, handles)
global n;
global u;
axes(handles.axes1);
imshow(n);
axes(handles.axes2);
imshow(u);

axes(handles.axes3);
imshow(n * 0.8);

% TOMBOL PEMBAGIAN
function pushbutton4_Callback(hObject, eventdata, handles)
global n;
global u;
axes(handles.axes1);
imshow(n);
axes(handles.axes2);
imshow(u);

axes(handles.axes3);
imshow(n / 0.7);

% TOMBOL LOGIKA AND / NAND
function pushbutton5_Callback(hObject, eventdata, handles)
global n;
global u;
axes(handles.axes1);
imshow(n);
axes(handles.axes2);
imshow(u);

a = n;
[kolom, baris] = size(a);

for x = 1 : kolom
    for y = 1 : baris
        if u(x,y) ~= 0
            a(x,y) = u(x,y);
        end
    end
end

axes(handles.axes3);
imshow(a);


% TOMBOL OR / NOR
function pushbutton6_Callback(hObject, eventdata, handles)
global n;
global u;
axes(handles.axes1);
imshow(n);
axes(handles.axes2);
imshow(u);

b = n;
[kolom, baris] = size(b);

for x = 1 : kolom
    for y = 1 : baris
        if b(x,y) ~= 0
            b(x,y) = u(x,y);
        end
    end
end

axes(handles.axes3);
imshow(b);

% TOMBOL NOT
function pushbutton7_Callback(hObject, eventdata, handles)
global n;
global u;

bw1 = n > 110;
bw2 = u > 110;

axes(handles.axes1);
imshow(bw1);

axes(handles.axes2);
imshow(bw2);

c = bw1;
[kolom, baris] = size(c);

for x = 1 : kolom
    for y = 1 : baris
        if bw2(x,y) ~= 0
            if c(x,y) == 0
                c(x,y) = 1;
            else
                c(x,y) = 0;
            end
        end
    end
end


axes(handles.axes3);
imshow(c);

% TOMBOL XOR / XNOR
function pushbutton8_Callback(hObject, eventdata, handles)
global n;
global u;

bw1 = n > 110;
bw2 = u > 110;

axes(handles.axes1);
imshow(bw1);

axes(handles.axes2);
imshow(bw2);

d = bw1;
[kolom, baris] = size(d);

for x = 1 : kolom
    for y = 1 : baris
        if d(x,y) == 0
            d(x,y) = 1;
        else
            d(x,y) = 0;
        end
    end
end

axes(handles.axes3);
imshow(d);

% TOMBOL PERSKALAAN
function pushbutton9_Callback(hObject, eventdata, handles)
global n;
global u;
axes(handles.axes1);
imshow(n);
axes(handles.axes2);
imshow(u);

[kolom, baris] = size(n);

Kl = 1;
Br = 2;
e = zeros(kolom, baris);

for x = 1 : kolom
    for y = 1 : baris
        x2 = x * Kl;
        y2 = y * Br;
        e(x2,y2) = n(x,y);
    end
end

axes(handles.axes3);
imshow(uint8(e));

% TOMBOL REFLEKSI
function pushbutton10_Callback(hObject, eventdata, handles)
global n;
global u;
axes(handles.axes1);
imshow(n);
axes(handles.axes2);
imshow(u);

[kolom, baris] = size(n);
f = zeros(kolom, baris);

for x = 1 : kolom
    for y = 1 : baris
        x2 = kolom + 1 - x;
        y2 = y;
        f(x2,y2) = n(x,y);
    end
end

axes(handles.axes3);
imshow(uint8(f));