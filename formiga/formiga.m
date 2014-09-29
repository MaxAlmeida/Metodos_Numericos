function varargout = formiga(varargin)
% FORMIGA M-file for formiga.fig
%      FORMIGA, by itself, creates a new FORMIGA or raises the existing
%      singleton*.
%
%      H = FORMIGA returns the handle to a new FORMIGA or the handle to
%      the existing singleton*.
%
%      FORMIGA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORMIGA.M with the given input arguments.
%
%      FORMIGA('Property','Value',...) creates a new FORMIGA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before formiga_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to formiga_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help formiga

% Last Modified by GUIDE v2.5 29-Sep-2014 17:22:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @formiga_OpeningFcn, ...
                   'gui_OutputFcn',  @formiga_OutputFcn, ...
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


% --- Executes just before formiga is made visible.
function formiga_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to formiga (see VARARGIN)

% Choose default command line output for formiga
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global pos_x incr dist;
pos_x = 0;
incr = 0.1;
dist =0;
x=0:0.05:1;
y=x.^2;
x2=[0];
y2=[0];
plot(x,y,x2,y2,'x');
% UIWAIT makes formiga wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = formiga_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in move_button.
function move_button_Callback(hObject, eventdata, handles)
% hObject    handle to move_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pos_x incr dist;
x0 = pos_x;
y0 = x0^2;
pos_x = pos_x+incr;

if(pos_x>1)
   pos_x = 1;
end
    
if (pos_x<=1)
    
    x=0:0.05:1;
    y=x.^2;
    
    x1 = pos_x;
    y1 = x1^2;
    
    x2=[x1];
    y2=[y1];
    
    dist = sqrt((x1-x0)^2+(y1-y0)^2);
   
    
    texto_x = strcat('x: ', num2str(x2));
    texto_y = strcat('y: ', num2str(y2));
    texto_dist = num2str(dist);
    set(handles.x_obj, 'String', texto_x);
    set(handles.y_obj, 'String', texto_y);
    set(handles.dist_obj, 'String', texto_dist);
    plot(x,y,x2,y2,'o');
    
    
    
end
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pos_x incr dist;
pos_x = 0;
incr = 0.1;
dist =0;
x=0:0.05:1;
y=x.^2;
x2=[0];
y2=[0];
plot(x,y,x2,y2,'x');
  texto_x = strcat('x: ', num2str(x2));
    texto_y = strcat('y: ', num2str(y2));
    
    set(handles.x_obj, 'String', texto_x);
    set(handles.y_obj, 'String', texto_y);
    

% --- Executes on selection change in incr_obj.
function incr_obj_Callback(hObject, eventdata, handles)
% hObject    handle to incr_obj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns incr_obj contents as cell array
%        contents{get(hObject,'Value')} returns selected item from incr_obj


% --- Executes during object creation, after setting all properties.
function incr_obj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incr_obj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


