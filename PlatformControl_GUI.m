function varargout = PlatformControl_GUI(varargin)
% PLATFORMCONTROL_GUI MATLAB code for PlatformControl_GUI.fig
%      PLATFORMCONTROL_GUI, by itself, creates a new PLATFORMCONTROL_GUI or raises the existing
%      singleton*.
%
%      H = PLATFORMCONTROL_GUI returns the handle to a new PLATFORMCONTROL_GUI or the handle to
%      the existing singleton*.
%
%      PLATFORMCONTROL_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLATFORMCONTROL_GUI.M with the given input arguments.
%
%      PLATFORMCONTROL_GUI('Property','Value',...) creates a new PLATFORMCONTROL_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PlatformControl_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PlatformControl_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PlatformControl_GUI

% Last Modified by GUIDE v2.5 13-Dec-2019 17:41:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PlatformControl_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @PlatformControl_GUI_OutputFcn, ...
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


% --- Executes just before PlatformControl_GUI is made visible.
function PlatformControl_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PlatformControl_GUI (see VARARGIN)

% Choose default command line output for PlatformControl_GUI
handles.output = hObject;
handles.Controller = PlatformController(handles.MainWindow);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PlatformControl_GUI wait for user response (see UIRESUME)
% uiwait(handles.MainWindow);


% --- Outputs from this function are returned to the command line.
function varargout = PlatformControl_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function StepByLength_Edit_Callback(hObject, eventdata, handles)
% hObject    handle to StepByLength_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of StepByLength_Edit as text
%        str2double(get(hObject,'String')) returns contents of StepByLength_Edit as a double


% --- Executes during object creation, after setting all properties.
function StepByLength_Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to StepByLength_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in UStep.
function UStep_Callback(hObject, eventdata, handles)
% hObject    handle to UStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in DStep.
function DStep_Callback(hObject, eventdata, handles)
% hObject    handle to DStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RStep.
function RStep_Callback(hObject, eventdata, handles)
% hObject    handle to RStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in LStep.
function LStep_Callback(hObject, eventdata, handles)
% hObject    handle to LStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Zup.
function Zup_Callback(hObject, eventdata, handles)
% hObject    handle to Zup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Zdown.
function Zdown_Callback(hObject, eventdata, handles)
% hObject    handle to Zdown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in M2P.
function M2P_Callback(hObject, eventdata, handles)
% hObject    handle to M2P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function M2P_Edit_Callback(hObject, eventdata, handles)
% hObject    handle to M2P_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M2P_Edit as text
%        str2double(get(hObject,'String')) returns contents of M2P_Edit as a double


% --- Executes during object creation, after setting all properties.
function M2P_Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M2P_Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in ThetaUp.
function ThetaUp_Callback(hObject, eventdata, handles)
% hObject    handle to ThetaUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ThetaDown.
function ThetaDown_Callback(hObject, eventdata, handles)
% hObject    handle to ThetaDown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PowerCal.
function PowerCal_Callback(hObject, eventdata, handles)
% hObject    handle to PowerCal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function COMPort_Callback(hObject, eventdata, handles)
% hObject    handle to COMPort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of COMPort as text
%        str2double(get(hObject,'String')) returns contents of COMPort as a double


% --- Executes during object creation, after setting all properties.
function COMPort_CreateFcn(hObject, eventdata, handles)
% hObject    handle to COMPort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
