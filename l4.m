function varargout = l4(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @l4_OpeningFcn, ...
                   'gui_OutputFcn',  @l4_OutputFcn, ...
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

% --- Executes just before l4 is made visible.
function l4_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = l4_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Executes on button press in select_btn.
function select_btn_Callback(hObject, eventdata, handles)
%test = get(handles.select_group,'SelectedObject');
%key = get(test,'String');
%msgbox(key);
ip = get(handles.chk_ip, 'Value');
ai = get(handles.chk_ai, 'Value');
dsp = get(handles.chk_dsp, 'Value');
ce = get(handles.chk_ce, 'Value');
se = get(handles.chk_se, 'Value');
enp = get(handles.chk_enp, 'Value');

% --- Executes on button press in chk_ip.
function chk_ip_Callback(hObject, eventdata, handles)

% --- Executes on button press in chk_ai.
function chk_ai_Callback(hObject, eventdata, handles)

% --- Executes on button press in chk_dsp.
function chk_dsp_Callback(hObject, eventdata, handles)

% --- Executes on button press in chk_ce.
function chk_ce_Callback(hObject, eventdata, handles)

% --- Executes on button press in chk_se.
function chk_se_Callback(hObject, eventdata, handles)

% --- Executes on button press in chk_enp.
function chk_enp_Callback(hObject, eventdata, handles)

% --- Executes when selected object is changed in select_group.
function select_group_SelectionChangedFcn(hObject, eventdata, handles)
test = get(handles.select_group,'SelectedObject');
key = get(test,'String');
switch key
    case 'Computer'
        set(handles.chk_ip,'Enable','On');
        set(handles.chk_ai,'Enable','On');
        set(handles.chk_dsp,'Enable','Off');
        set(handles.chk_ce,'Enable','Off');
        set(handles.chk_se,'Enable','On');
        set(handles.chk_enp,'Enable','On');
    case 'Electronics'
        set(handles.chk_ip,'Enable','Off');
        set(handles.chk_ai,'Enable','Off');
        set(handles.chk_dsp,'Enable','On');
        set(handles.chk_ce,'Enable','On');
        set(handles.chk_se,'Enable','Off');
        set(handles.chk_enp,'Enable','Off');
end