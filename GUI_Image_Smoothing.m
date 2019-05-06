function varargout = GUI_Image_Smoothing(varargin)
% GUI_IMAGE_SMOOTHING MATLAB code for GUI_Image_Smoothing.fig
%      GUI_IMAGE_SMOOTHING, by itself, creates a new GUI_IMAGE_SMOOTHING or raises the existing
%      singleton*.
%
%      H = GUI_IMAGE_SMOOTHING returns the handle to a new GUI_IMAGE_SMOOTHING or the handle to
%      the existing singleton*.
%
%      GUI_IMAGE_SMOOTHING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_IMAGE_SMOOTHING.M with the given input arguments.
%
%      GUI_IMAGE_SMOOTHING('Property','Value',...) creates a new GUI_IMAGE_SMOOTHING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_Image_Smoothing_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_Image_Smoothing_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_Image_Smoothing

% Last Modified by GUIDE v2.5 02-May-2019 14:07:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_Image_Smoothing_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_Image_Smoothing_OutputFcn, ...
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


% --- Executes just before GUI_Image_Smoothing is made visible.
function GUI_Image_Smoothing_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_Image_Smoothing (see VARARGIN)

% Choose default command line output for GUI_Image_Smoothing
handles.output = hObject;
set(handles.doSmoothing,'Enable','off');
set(handles.btnzoom,'Enable','off');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_Image_Smoothing wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_Image_Smoothing_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in loadPicture.
function loadPicture_Callback(hObject, eventdata, handles)
% hObject    handle to loadPicture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname] = uigetfile({'*.jpg;*.gif;*.png','Images (*.jpg, *.gif, *.png)'});
valore = strcat(pathname, filename);
handles.myImage = imread(valore);
axes(handles.axes1);
set(handles.doSmoothing,'Enable','on');
set(handles.btnzoom,'Enable','on');
guidata(hObject,handles);


% --- Executes on button press in doSmoothing.
function doSmoothing_Callback(hObject, eventdata, handles)
% hObject    handle to doSmoothing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I = imresize(handles.myImage,[64 NaN]);
[r,c,v] = size(I);
x = 1:c;
y = 1:r;
NEW_I = zeros(5*r,5*c,v,'uint8');
NEW_I_L = zeros(5*r,5*c,v,'uint8');
new_x = linspace(1,c,5*c)';
new_y = linspace(1,r,5*r);
for i=1:3
   NEW_I(:,:,i) = uint8(interp2(x,y,double(I(:,:,i)),new_x,new_y,'spline'));
   NEW_I_L(:,:,i) = uint8(interp2(x,y,double(I(:,:,i)),new_x,new_y,'linear'));
end
subplot(1,3,1)
imshow(I);
title('Immagine Originale')
subplot(1,3,2)
imshow(NEW_I_L)
title('Smooting Lineare')
subplot(1,3,3)
imshow(NEW_I)
title('Smooting Spline')


% --- Executes on button press in btnzoom.
function btnzoom_Callback(hObject, eventdata, handles)
% hObject    handle to btnzoom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I = imresize(handles.myImage,[64 NaN]);
[r,c,v] = size(I);
x = 1:c;
y = 1:r;
NEW_I = zeros(5*r,5*c,v,'uint8');
NEW_I_L = zeros(5*r,5*c,v,'uint8');
new_x = linspace(1,c,5*c)';
new_y = linspace(1,r,5*r);
for i=1:3
   NEW_I(:,:,i) = uint8(interp2(x,y,double(I(:,:,i)),new_x,new_y,'spline'));
   NEW_I_L(:,:,i) = uint8(interp2(x,y,double(I(:,:,i)),new_x,new_y,'linear'));
end
subplot(1,3,1)
imshow(I);
title('Immagine Originale')
subplot(1,3,2)
imshow(NEW_I_L)
title('Smooting Lineare')
subplot(1,3,3)
imshow(NEW_I)
title('Smooting Spline')
subplot(1,3,1)
xlim([29.4 61.4])
ylim([16.8 45.2])
subplot(1,3,2)
xlim([146 306])
ylim([83 226])
subplot(1,3,3)
xlim([146 306])
ylim([82 224])