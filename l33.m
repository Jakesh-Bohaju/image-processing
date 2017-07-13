function varargout = l33(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @l33_OpeningFcn, ...
                   'gui_OutputFcn',  @l33_OutputFcn, ...
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

function l33_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = l33_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


function BtnLoad_Callback(hObject, eventdata, handles)
global img img2;
[path,user_cancel]=imgetfile();
if user_cancel
    msgbox(sprintf('Error'),'Error','Error');
    return;
end
img = imread(path);
img = im2double(img);
img2 = img;
axes(handles.axes1);
imshow(img2);

function BtnReset_Callback(hObject, eventdata, handles)
global img2;
axes(handles.axes1);
imshow(img2);

function BtnNegative_Callback(hObject, eventdata, handles)
global img;
imgnegative = 1-img;
axes(handles.axes1);
imshow(imgnegative);

function BtnBlackWhite_Callback(hObject, eventdata, handles)
global img;
imgblack = im2bw(img);
axes(handles.axes1);
imshow(imgblack);

function BtnGrayscale_Callback(hObject, eventdata, handles)
global img;
imggrayscale = (img(:,:,1)+img(:,:,2)+img(:,:,3))/3;
axes(handles.axes1);
imshow(imggrayscale);

function SliderContrast_Callback(hObject, eventdata, handles)
global img2;
val = 1*get(hObject,'val')-0.5;
imgcontrast = img2+val;
axes(handles.axes1);
imshow(imgcontrast);

function SliderContrast_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
