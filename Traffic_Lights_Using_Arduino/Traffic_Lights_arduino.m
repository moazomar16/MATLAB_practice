function varargout = Traffic_Lights_arduino(varargin)
% TRAFFIC_LIGHTS_ARDUINO MATLAB code for Traffic_Lights_arduino.fig
%      TRAFFIC_LIGHTS_ARDUINO, by itself, creates a new TRAFFIC_LIGHTS_ARDUINO or raises the existing
%      singleton*.
%
%      H = TRAFFIC_LIGHTS_ARDUINO returns the handle to a new TRAFFIC_LIGHTS_ARDUINO or the handle to
%      the existing singleton*.
%
%      TRAFFIC_LIGHTS_ARDUINO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAFFIC_LIGHTS_ARDUINO.M with the given input arguments.
%
%      TRAFFIC_LIGHTS_ARDUINO('Property','Value',...) creates a new TRAFFIC_LIGHTS_ARDUINO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Traffic_Lights_arduino_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Traffic_Lights_arduino_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Traffic_Lights_arduino

% Last Modified by GUIDE v2.5 24-Dec-2022 16:22:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Traffic_Lights_arduino_OpeningFcn, ...
                   'gui_OutputFcn',  @Traffic_Lights_arduino_OutputFcn, ...
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


% --- Executes just before Traffic_Lights_arduino is made visible.
function Traffic_Lights_arduino_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Traffic_Lights_arduino (see VARARGIN)

% Choose default command line output for Traffic_Lights_arduino
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
clear all;
global count;
count=0;
global a;
a = arduino('COM12', 'Uno');

% UIWAIT makes Traffic_Lights_arduino wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Traffic_Lights_arduino_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in startPushButton.
function startPushButton_Callback(hObject, eventdata, handles)
% hObject    handle to startPushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A;
global a;
global auto;
global count;

if ((handles.auto.Value) == 1)
    A=get(handles.delay,'string');
    if isequal(A,'')
        
    else
        auto=1;
        A=str2double(A);
        while(auto==1)
            writeDigitalPin(a, 'D8',  1);
            writeDigitalPin(a, 'D9',  0);
            writeDigitalPin(a, 'D10', 0);
            pause(A);
            writeDigitalPin(a, 'D8',  0);
            writeDigitalPin(a, 'D9',  1);
            writeDigitalPin(a, 'D10', 0);
            pause(A);
            writeDigitalPin(a, 'D8',  0);
            writeDigitalPin(a, 'D9',  0);
            writeDigitalPin(a, 'D10', 1);
            pause(A);
            
        end
        
       
    end
    
else
    auto=0;
    count=0;
    writeDigitalPin(a, 'D8',  1);
    writeDigitalPin(a, 'D9',  0);
    writeDigitalPin(a, 'D10', 0);
    

end

% --- Executes on button press in stopPushButton.
function stopPushButton_Callback(hObject, eventdata, handles)
% hObject    handle to stopPushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global auto;
auto=0;
writeDigitalPin(a, 'D8', 0);
writeDigitalPin(a, 'D9',  0);
writeDigitalPin(a, 'D10', 0);

% --- Executes on button press in switch_led.
function switch_led_Callback(hObject, eventdata, handles)
% hObject    handle to switch_led (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global count
global a;
count = count + 1;
if count > 2
    count = 0;
end
if ((handles.manual.Value) == 1)
    switch count
        case 0
            writeDigitalPin(a, 'D8',  1);
            writeDigitalPin(a, 'D9',  0);
            writeDigitalPin(a, 'D10', 0);
        case 1
            writeDigitalPin(a, 'D8',  0);
            writeDigitalPin(a, 'D9',  1);
            writeDigitalPin(a, 'D10', 0);
        case 2
            writeDigitalPin(a, 'D8',  0);
            writeDigitalPin(a, 'D9',  0);
            writeDigitalPin(a, 'D10', 1);
    end
end
  


function delay_Callback(hObject, eventdata, handles)
% hObject    handle to delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of delay as text
%        str2double(get(hObject,'String')) returns contents of delay as a double


% --- Executes during object creation, after setting all properties.
function delay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in auto.
function auto_Callback(hObject, eventdata, handles)
% hObject    handle to auto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of auto






% --- Executes on button press in manual.
function manual_Callback(hObject, eventdata, handles)
% hObject    handle to manual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of manual


% --- Executes during object deletion, before destroying properties.
function main_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
global a
writeDigitalPin(a, 'D8', 0);
writeDigitalPin(a, 'D9',  0);
writeDigitalPin(a, 'D10', 0);
clear a;
delete(hObject);
