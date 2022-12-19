function varargout = Simple_Calculator_GUI(varargin)
% SIMPLE_CALCULATOR_GUI MATLAB code for Simple_Calculator_GUI.fig
%      SIMPLE_CALCULATOR_GUI, by itself, creates a new SIMPLE_CALCULATOR_GUI or raises the existing
%      singleton*.
%
%      H = SIMPLE_CALCULATOR_GUI returns the handle to a new SIMPLE_CALCULATOR_GUI or the handle to
%      the existing singleton*.
%
%      SIMPLE_CALCULATOR_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLE_CALCULATOR_GUI.M with the given input arguments.
%
%      SIMPLE_CALCULATOR_GUI('Property','Value',...) creates a new SIMPLE_CALCULATOR_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Simple_Calculator_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Simple_Calculator_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Simple_Calculator_GUI

% Last Modified by GUIDE v2.5 15-Dec-2022 19:38:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Simple_Calculator_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Simple_Calculator_GUI_OutputFcn, ...
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


% --- Executes just before Simple_Calculator_GUI is made visible.
function Simple_Calculator_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Simple_Calculator_GUI (see VARARGIN)

% Choose default command line output for Simple_Calculator_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Simple_Calculator_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Simple_Calculator_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function in1_Callback(hObject, eventdata, handles)
% hObject    handle to in1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of in1 as text
%        str2double(get(hObject,'String')) returns contents of in1 as a double


% --- Executes during object creation, after setting all properties.
function in1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to in1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function out_Callback(hObject, eventdata, handles)
% hObject    handle to out (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of out as text
%        str2double(get(hObject,'String')) returns contents of out as a double


% --- Executes during object creation, after setting all properties.
function out_CreateFcn(hObject, eventdata, handles)
% hObject    handle to out (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of add
A=get(handles.in1,'string');
B=get(handles.in2,'string');
set(handles.text5,'string','+');
set(handles.text6,'string','=');

if isequal(A,'') 
    set(handles.erorr,'string','Missing Operand');
elseif isequal(B,'')
    set(handles.erorr,'string','Missing Operand');
else
    C=str2double(A)+str2double(B);
    set(handles.out,'string',num2str(C));
end


% --- Executes on button press in div.
function div_Callback(hObject, eventdata, handles)
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of div
A=get(handles.in1,'string');
B=get(handles.in2,'string');
set(handles.text5,'string','/');
set(handles.text6,'string','=');

if isequal(A,'') 
    set(handles.erorr,'string','Missing Operand');
elseif isequal(B,'')
    set(handles.erorr,'string','Missing Operand');
else
    if isequal(B,'0')
        set(handles.erorr,'string','Dividing By Zero');
    else
        C=str2double(A)/str2double(B);
        set(handles.out,'string',num2str(C));
    end
end

% --- Executes on button press in mul.
function mul_Callback(hObject, eventdata, handles)
% hObject    handle to mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mul
A=get(handles.in1,'string');
B=get(handles.in2,'string');
set(handles.text5,'string','*');
set(handles.text6,'string','=');

if isequal(A,'') 
    set(handles.erorr,'string','Missing Operand');
elseif isequal(B,'')
    set(handles.erorr,'string','Missing Operand');
else
    C=str2double(A)*str2double(B);
    set(handles.out,'string',num2str(C));
end

% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sub
A=get(handles.in1,'string');
B=get(handles.in2,'string');
set(handles.text5,'string','-');
set(handles.text6,'string','=');

if isequal(A,'') 
    set(handles.erorr,'string','Missing Operand');
elseif isequal(B,'')
    set(handles.erorr,'string','Missing Operand');
else
    C=str2double(A)-str2double(B);
    set(handles.out,'string',num2str(C));
end

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of clear
set(handles.in1,'string','');
set(handles.in2,'string','');
set(handles.out,'string','');
set(handles.text5,'string','');
set(handles.text6,'string','');
set(handles.erorr,'string','');



function in2_Callback(hObject, eventdata, handles)
% hObject    handle to in2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of in2 as text
%        str2double(get(hObject,'String')) returns contents of in2 as a double


% --- Executes during object creation, after setting all properties.
function in2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to in2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in equ_add.
function equ_add_Callback(hObject, eventdata, handles)
% hObject    handle to equ_add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of equ_add
A=get(handles.equin1,'string');
B=get(handles.equin2,'string');
set(handles.equ_op,'string','+');

if isequal(A,'') 
    set(handles.funerorr,'string','Missing X Axis');
elseif isequal(B,'')
    set(handles.funerorr,'string','Missing Y Axis');
else
    A = str2double(regexp(A,'\d*[\.]?\d*','match'))
    B = str2double(regexp(B,'\d*[\.]?\d*','match'))
    C=A+B
    set(handles.equ_result,'string', num2str(C));
end

% --- Executes on button press in equ_div.
function equ_div_Callback(hObject, eventdata, handles)
% hObject    handle to equ_div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of equ_div
A=get(handles.equin1,'string');
B=get(handles.equin2,'string');
set(handles.equ_op,'string','/');

if isequal(A,'') 
    set(handles.funerorr,'string','Missing X Axis');
elseif isequal(B,'')
    set(handles.funerorr,'string','Missing Y Axis');
else
    A = str2double(regexp(A,'\d*[\.]?\d*','match'))
    B = str2double(regexp(B,'\d*[\.]?\d*','match'))
    C=A./B
    set(handles.equ_result,'string', num2str(C));
end


% --- Executes on button press in equ_mul.
function equ_mul_Callback(hObject, eventdata, handles)
% hObject    handle to equ_mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of equ_mul
A=get(handles.equin1,'string');
B=get(handles.equin2,'string');
set(handles.equ_op,'string','*');

if isequal(A,'') 
    set(handles.funerorr,'string','Missing X Axis');
elseif isequal(B,'')
    set(handles.funerorr,'string','Missing Y Axis');
else
    A = str2double(regexp(A,'\d*[\.]?\d*','match'));
    B = str2double(regexp(B,'\d*[\.]?\d*','match'));
    C=A.*B;
    set(handles.equ_result,'string', num2str(C));
end


% --- Executes on button press in equ_sub.
function equ_sub_Callback(hObject, eventdata, handles)
% hObject    handle to equ_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of equ_sub
A=get(handles.equin1,'string');
B=get(handles.equin2,'string');
set(handles.equ_op,'string','-');

if isequal(A,'') 
    set(handles.funerorr,'string','Missing X Axis');
elseif isequal(B,'')
    set(handles.funerorr,'string','Missing Y Axis');
else
    A = str2double(regexp(A,'\d*[\.]?\d*','match'))
    B = str2double(regexp(B,'\d*[\.]?\d*','match'))
    C=A-B
    set(handles.equ_result,'string', num2str(C));
end


% --- Executes on button press in equ_clear.
function equ_clear_Callback(hObject, eventdata, handles)
% hObject    handle to equ_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of equ_clear
set(handles.equin1,'string','');
set(handles.equin2,'string','');
set(handles.equ_result,'string','');
set(handles.equ_op,'string','');
set(handles.funerorr,'string','');


function equin1_Callback(hObject, eventdata, handles)
% hObject    handle to equin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equin1 as text
%        str2double(get(hObject,'String')) returns contents of equin1 as a double


% --- Executes during object creation, after setting all properties.
function equin1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function equin2_Callback(hObject, eventdata, handles)
% hObject    handle to equin2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equin2 as text
%        str2double(get(hObject,'String')) returns contents of equin2 as a double


% --- Executes during object creation, after setting all properties.
function equin2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equin2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in equ_equal.
function equ_equal_Callback(hObject, eventdata, handles)
% hObject    handle to equ_equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of equ_equal



function equ_result_Callback(hObject, eventdata, handles)
% hObject    handle to equ_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equ_result as text
%        str2double(get(hObject,'String')) returns contents of equ_result as a double


% --- Executes during object creation, after setting all properties.
function equ_result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equ_result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in x_axis.
function x_axis_Callback(hObject, eventdata, handles)
% hObject    handle to x_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of x_axis


% --- Executes on button press in y_axis.
function y_axis_Callback(hObject, eventdata, handles)
% hObject    handle to y_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of y_axis


% --- Executes on button press in X_Y_Axis.
function X_Y_Axis_Callback(hObject, eventdata, handles)
% hObject    handle to X_Y_Axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of X_Y_Axis


% --- Executes on button press in Resultant.
function Resultant_Callback(hObject, eventdata, handles)
% hObject    handle to Resultant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Resultant


% --- Executes on button press in Sine.
function Sine_Callback(hObject, eventdata, handles)
% hObject    handle to Sine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Sine


% --- Executes on button press in Cosine.
function Cosine_Callback(hObject, eventdata, handles)
% hObject    handle to Cosine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Cosine


% --- Executes on button press in Equation.
function Equation_Callback(hObject, eventdata, handles)
% hObject    handle to Equation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Equation


% --- Executes on button press in Delete.
function Delete_Callback(hObject, eventdata, handles)
% hObject    handle to Delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Delete
set(handles.funerorr,'string','');
axes(handles.axes1);
cla; 

% --- Executes on button press in Enter.
function Enter_Callback(hObject, eventdata, handles)
% hObject    handle to Enter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Enter
A=get(handles.equin1,'string');
B=get(handles.equin2,'string');
res=get(handles.equ_result,'string');
FUN=get(handles.funin,'string');

if ((handles.x_axis.Value == 1) && (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0))
    if isequal(A,'') 
        set(handles.funerorr,'string','Missing X Axis');
    else
        A = str2double(regexp(A,'\d*[\.]?\d*','match'))
        axes(handles.axes1);
        plot(A,'-');
    end
elseif ((handles.y_axis.Value == 1) && (handles.x_axis.Value == 0)  && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0))
    if isequal(B,'') 
        set(handles.funerorr,'string','Missing Y Axis');
    else
        B = str2double(regexp(B,'\d*[\.]?\d*','match'))
        axes(handles.axes1);
        plot(B,'-');
    end
elseif ((handles.X_Y_Axis.Value == 1) && (handles.x_axis.Value == 0) && (handles.y_axis.Value == 0) && (handles.Equation.Value == 0) )
    if isequal(B,'') 
        set(handles.funerorr,'string','Missing Y Axis');
    elseif  isequal(A,'')
        set(handles.funerorr,'string','Missing X Axis');
    else
        A = str2double(regexp(A,'\d*[\.]?\d*','match'))
        B = str2double(regexp(B,'\d*[\.]?\d*','match'))
        axes(handles.axes1);
        plot(A,'-');
        hold on;
        plot(B,'-');
    end
elseif ((handles.Equation.Value == 1) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0))
   
        x=0:0.1:10;
        axes(handles.axes1);
        plot(eval(FUN),'-');
       
elseif ((handles.Resultant.Value == 1) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0))
        if isequal(res,'') 
            set(handles.funerorr,'string','There Is No Result TO Plot');
        else
            res=str2num(res);
            axes(handles.axes1);
            plot(res,'-');
        end
       
elseif ((handles.Resultant.Value == 1) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0))
        if isequal(res,'') 
            set(handles.funerorr,'string','There Is No Result TO Plot');
        else
            res=str2num(res);
            axes(handles.axes1);
            plot(res,'-');
        end
       
elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 1))
            if  isequal(A,'')
                set(handles.funerorr,'string','Missing X Axis');
            else
                 A = str2double(regexp(A,'\d*[\.]?\d*','match'))
                 x=A;
                 axes(handles.axes1);
                 plot(eval(FUN),'-');
                 hold on;
                 plot(A,'-');
            end
        
       
elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 1))
            if  isequal(B,'')
                set(handles.funerorr,'string','Missing B Axis');
            else
                 B = str2double(regexp(B,'\d*[\.]?\d*','match'))
                 x=B;
                 axes(handles.axes1);
                 plot(eval(FUN),'-');
                 hold on;
                 plot(B,'-');
            end
        
       
elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 1)&& (handles.Equation.Value == 1))
            if  isequal(A,'')
                set(handles.funerorr,'string','Missing X Axis');
            elseif  isequal(B,'')
                set(handles.funerorr,'string','Missing X Axis');
            else
                 A = str2double(regexp(A,'\d*[\.]?\d*','match'));
                 B = str2double(regexp(B,'\d*[\.]?\d*','match'));
                 x=A;
                 y=B;
                 axes(handles.axes1);
                 plot(eval(FUN),'-');
            end
elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0)&& (handles.Sine.Value == 1))
                A = str2double(regexp(A,'\d*[\.]?\d*','match'));
                n=[-10:10];
                f=50;
                fs=1000
                x=sin(2*pi*(f/fs)*n);
                disp(f);
                axes(handles.axes1);
                plot(n,x)
          
elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0)&& (handles.Sine.Value == 0)&& (handles.Cosine.Value == 1))
                n=[-10:10];
                f=50;
                fs=1000
                x=cos(2*pi*(f/fs)*n);
                axes(handles.axes1);
                plot(n,x)
          
else
    set(handles.funerorr,'string','ERORR!!! You Must Select Only One Option To Plot');
end 
function funin_Callback(hObject, eventdata, handles)
% hObject    handle to funin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funin as text
%        str2double(get(hObject,'String')) returns contents of funin as a double


% --- Executes during object creation, after setting all properties.
function funin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
