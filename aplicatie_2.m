function varargout = aplicatie_2(varargin)
% APLICATIE_2 MATLAB code for aplicatie_2.fig
%      APLICATIE_2, by itself, creates a new APLICATIE_2 or raises the existing
%      singleton*.
%
%      H = APLICATIE_2 returns the handle to a new APLICATIE_2 or the handle to
%      the existing singleton*.
%
%      APLICATIE_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APLICATIE_2.M with the given input arguments.
%
%      APLICATIE_2('Property','Value',...) creates a new APLICATIE_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before aplicatie_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to aplicatie_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help aplicatie_2

% Last Modified by GUIDE v2.5 02-Dec-2020 12:13:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @aplicatie_2_OpeningFcn, ...
                   'gui_OutputFcn',  @aplicatie_2_OutputFcn, ...
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


% --- Executes just before aplicatie_2 is made visible.
function aplicatie_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to aplicatie_2 (see VARARGIN)

% Choose default command line output for aplicatie_2
handles.textoutput = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes aplicatie_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = aplicatie_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.textoutput;


% --- Executes on button press in coloana.
function coloana_Callback(hObject, eventdata, handles)
% hObject    handle to coloana (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

data = get(handles.uitable1, 'data');
data(end+1,:) = 0;
set(handles.uitable1, 'data', data)


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in uitable1.
function uitable1_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in rand.
function rand_Callback(hObject, eventdata, handles)
% hObject    handle to rand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = get(handles.uitable1, 'data');
data(:,end+1) = 0;
set(handles.uitable1, 'data', data)


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.input,'String');
str=str(1:end-1);
set(handles.input,'String',str);

% --- Executes on button press in sterge.
function sterge_Callback(hObject, eventdata, handles)
% hObject    handle to sterge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = get(handles.uitable1, 'data');
data=data(end-1,:);
set(handles.uitable1, 'data', data)


% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 str=get(handles.input,'String');
str=strcat(str,'-');
set(handles.input,'String',str);

% isPushed = get(hObject, 'Value');
% 
% if isPushed
%     set(hObject, 'String', 'Pushed');
%     str=get(handles.input,'String');
% str=strcat(str,'-');
% set(handles.input,'String',str);
% else
%     set(hObject, 'String', 'Unpushed');
%     set(handles.input, 'strcat','');
% end


% --- Executes on button press in xls.
function xls_Callback(hObject, eventdata, handles)
% hObject    handle to xls (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = get(handles.uitable1, 'data');
xlswrite('data.xlsx',data);


% --- Executes on button press in alege.
function alege_Callback(hObject, eventdata, handles)
% hObject    handle to alege (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = menu('Choose an operation','Plus','Minus','Multiply','Divide','Limita');
promt = {'Enter value for x','Enter value fory'};
data=get(handles.uitable1,'data');
dlg_title = 'Input';
num_lines = 1;
def = {'',''};
answer = inputdlg(promt,dlg_title,num_lines,def);
data=get(handles.uitable1,'data');
x = data(answer{1});
y = data(answer{2});
if choice == 1
str=get(handles.input,'String');
str=strcat(str,'+'); 
set(handles.input,'String',str);
elseif choice == 2
%   data=get(handles.uitable1,'data');
%   data=data(1)
%   set(handles.input,'String',data)

result = x-y;
set(handles.input,'String',result);

%   str=get(handles.input,'String');
% str=strcat(str,'-'); 
% set(handles.input,'String',str);

% data=get(handles.uitable1,'data');
%   data=data(2)
%   set(handles.uitable1,'data',data)
elseif choice == 3
    result = x*y;
    set(handles.input,'String',result);
elseif choice == 4
    result = x/y;
    set(handles.input,'String',result);
elseif choice == 5
    promt = {'Introduceti puterea lui x:','La cat tinde x'};
dlg_title='input';
num_lines = 1;
def = {'',''};
answer = inputdlg(promt, dlg_title, num_lines, def);
xx = answer{1};
yy = answer{2}
jason = inline('xx^2','xx')
syms x
limita = limit(jason(xx),x,yy)
set(handles.input,'String',limita)
end


% --- Executes on button press in egal.
function egal_Callback(hObject, eventdata, handles)
% hObject    handle to egal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.input,'String');
str=eval(str);
set(handles.input,'String',str);

% --- Executes on button press in paste.
function paste_Callback(hObject, eventdata, handles)
% hObject    handle to paste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

isPushed = get(hObject, 'Value');

if isPushed
    set(hObject, 'String', 'Pune');
    alpacino = clipboard('paste',set(handles.input,'String'));
else
    set(hObject, 'String', 'Copiaza');
 clipboard('copy',get(handles.input,'String'))
end



% --- Executes on button press in cut.
function cut_Callback(hObject, eventdata, handles)
% hObject    handle to cut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clipboard('cut',get(handles.uitable1,'data'))

% --- Executes on button press in calculmanual.
function calculmanual_Callback(hObject, eventdata, handles)
% hObject    handle to calculmanual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = menu('','Adunare','Scadere','Inmultire','Impartire','(',')','.')
    if choice == 1
str=get(handles.input,'String');
str=strcat(str,'+');
set(handles.input,'String',str);
    elseif choice == 2
str=get(handles.input,'String');
str=strcat(str,'-');
set(handles.input,'String',str);
    elseif choice == 3
str=get(handles.input,'String');
str=strcat(str,'*');
set(handles.input,'String',str);
    elseif choice == 4
str=get(handles.input,'String');
str=strcat(str,'/');
set(handles.input,'String',str);
    elseif choice == 5
str=get(handles.input,'String');
str=strcat(str,'(');
set(handles.input,'String',str);
    elseif choice == 6
str=get(handles.input,'String');
str=strcat(str,')');
set(handles.input,'String',str);
    elseif choice == 7
str=get(handles.input,'String');
str=strcat(str,'.');
set(handles.input,'String',str);
end


% --- Executes on button press in Numeric.
function Numeric_Callback(hObject, eventdata, handles)
% hObject    handle to Numeric (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = menu('Numere','1','2','3','4','5','6','7','8','9','0');
    
    if choice == 1
str=get(handles.input,'String');
str=strcat(str,'1');
set(handles.input,'String',str);
    elseif choice == 2
str=get(handles.input,'String');
str=strcat(str,'2');
set(handles.input,'String',str);
    elseif choice == 3
str=get(handles.input,'String');
str=strcat(str,'3');
set(handles.input,'String',str);
    elseif choice == 4
str=get(handles.input,'String');
str=strcat(str,'4');
set(handles.input,'String',str);
    elseif choice == 5
str=get(handles.input,'String');
str=strcat(str,'5');
set(handles.input,'String',str);
    elseif choice == 6
str=get(handles.input,'String');
str=strcat(str,'6');
set(handles.input,'String',str);
    elseif choice == 7
str=get(handles.input,'String');
str=strcat(str,'7');
set(handles.input,'String',str);
    elseif choice == 8
str=get(handles.input,'String');
str=strcat(str,'8');
set(handles.input,'String',str);
    elseif choice == 9 
str=get(handles.input,'String');
str=strcat(str,'9');
set(handles.input,'String',str);
    elseif choice == 10
str=get(handles.input,'String');
str=strcat(str,'0');
set(handles.input,'String',str);
end


% --- Executes on button press in complexe.
function complexe_Callback(hObject, eventdata, handles)
% hObject    handle to complexe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = menu('Operatii','Radical','Ridicare la putere', 'Media aritmetica', 'Media geometrica','Media ponderata','Minim','Maxim','AutoSum','Limita','Sinus','Consinus','Tangenta','Cotangenta','e');

    if choice == 1
str=get(handles.input,'String');
str=strcat(str,'sqrt()');
set(handles.input,'String',str);    
    elseif choice == 2
str=get(handles.input,'String');
str=strcat(str,'nr^(putere)');
set(handles.input,'String',str);  
    elseif choice == 3
str=get(handles.input,'String');
str=strcat(str,'(a+b)/2');
set(handles.input,'String',str); 
    elseif choice == 4
str=get(handles.input,'String');
str=strcat(str,'sqrt(a+b), a,b=>0');
set(handles.input,'String',str);  
    elseif choice == 5
str=get(handles.input,'String');
str=strcat(str,'(p1*a1+p2*a2+p3*a3+p4*a4)/(p1+p2+p3+p4)');
set(handles.input,'String',str); 
    elseif choice == 6
    elseif choice == 7
    elseif choice == 8
str=get(handles.input,'String');
str=strcat(str,'=SUM()');
set(handles.input,'String',str);   
    elseif choice == 9
str=get(handles.input,'String');
str=strcat(str,'limit(x^2,x,nr)');
set(handles.input,'String',str);
    elseif choice == 10
str=get(handles.input,'String');
str=strcat(str,'sin()');
set(handles.input,'String',str); 
    elseif choice == 11
str=get(handles.input,'String');
str=strcat(str,'cos()');
set(handles.input,'String',str); 
    elseif choice == 12
str=get(handles.input,'String');
str=strcat(str,'tan()');
set(handles.input,'String',str); 
    elseif choice == 13
str=get(handles.input,'String');
str=strcat(str,'cot()');
set(handles.input,'String',str); 
    elseif choice == 14
str=get(handles.input,'String');
str=strcat(str,'e^n');
set(handles.input,'String',str); 
end


% --- Executes on button press in stergerand.
function stergerand_Callback(hObject, eventdata, handles)
% hObject    handle to stergerand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = get(handles.uitable1, 'data');
data=data(:,end-1);
set(handles.uitable1, 'data', data)


% --- Executes on button press in incrasefontsize.
function incrasefontsize_Callback(hObject, eventdata, handles)
% hObject    handle to incrasefontsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in descrasefontsize.
function descrasefontsize_Callback(hObject, eventdata, handles)
% hObject    handle to descrasefontsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in fontsize.
function fontsize_Callback(hObject, eventdata, handles)
% hObject    handle to fontsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns fontsize contents as cell array
%        contents{get(hObject,'Value')} returns selected item from fontsize


% --- Executes during object creation, after setting all properties.
function fontsize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fontsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in conversieanumar.
function conversieanumar_Callback(hObject, eventdata, handles)
% hObject    handle to conversieanumar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

choice = menu('Converise %','% la numar','numar la %');
promt = {'Inroduceti numarul','Introduceti procentajul'};
dlg_title='input';
num_lines = 1;
def = {'',''};
answer = inputdlg(promt, dlg_title, num_lines, def);
x = answer{1};
y = answer{2};
    if choice == 1
    result = (y * x)/100
    set(handles.input,'String',result)
    elseif choice == 2
     result = (x * 100)/y
     set(handles.input,'String',result)
     end


% --- Executes on button press in conversielei.
function conversielei_Callback(hObject, eventdata, handles)
% hObject    handle to conversielei (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = menu ('Conversie lei la','Euro','USD','Yen','Lire','Won','Tenge','Somoni','Som','Rubla','Ringgit','Rial','Rand','Pula','Peso','Cubanez','Pataca','Ngultrum','Marca','Manat','Lira S','Lira E','Lilangeni','Leva','Leu M','Leone')
promt = {'Introduceti valoarea pentru conversie'};
dlg_title='input';
num_lines = 1;
def = {''};
answer = inputdlg(promt, dlg_title, num_lines, def);
x = num2str(answer{1});
    if choice == 1
    fprintf('Converisa leului in Euro este:')
    result = x / 4.6
    set(handles.input,'String',result)
    elseif choice == 2
    fprintf('Conversia leului in USD este:')
    result = x / 4
    set(handles.input,'String',result)
    elseif choice == 3
    fprintf('Conversia leului in Yen este:')
    result = x / 0.038   
    set(handles.input,'String',result)
    elseif choice == 4
    fprintf('Conversia leului in Lire este:')
    result = x / 5.4
    set(handles.input,'String',result)
    elseif choice == 5
    fprintf('Conversia leului in Won este:')
    result = x / 0.04
    set(handles.input,'String',result)
    elseif choice == 6
    fprintf('Conversia leului in Tenge este:')
    result = x / 0.01
    set(handles.input,'String',result)
    elseif choice == 7
    fprintf('Conversia leului in Somoni este:')
    result = x / 0.4
    set(handles.input,'String',result)
    elseif choice == 8
    fprintf('Conversia leului in Som este:')
    result = x / 0.05
    set(handles.input,'String',result)
    elseif choice == 9
    fprintf('Conversia leului in Rubla ruseasca este:')
    result = x / 0.055
    set(handles.input,'String',result)
    elseif choice == 10
    fprintf('Conversia leului in Ringgit malaiezian este:')
    result = x / 0.9
    set(handles.input,'String',result)
    elseif choice == 11
    fprintf('Conversia leului in Rial saudit este:')
    result = x / 1.1
    set(handles.input,'String',result)
    elseif choice == 12
    fprintf('Conversia leului in Rand sud-african este:')
    result = x / 0.4
    set(handles.input,'String',result)
    elseif choice == 13
    fprintf('Conversia leului in Pula Botswana este:')
    result = x / 0.402
    set(handles.input,'String',result)
    elseif choice == 14
    fprintf('Conversia leului in Peso mexican este:')
    result = x / 0.2
    set(handles.input,'String',result)
    elseif choice == 15
    fprintf('Conversia leului in Peso Cubanez este:')
    result = x / 0.2
    set(handles.input,'String',result)
    elseif choice == 16
    fprintf('Conversia leului in Pataca din macao este:')
    result = x / 0.5 
    set(handles.input,'String',result)
    elseif choice == 17
    fprintf('Conversia leului in Ngultrum din Bhutan este:')
    result = x / 0.055
    set(handles.input,'String',result)
    elseif choice == 18
    fprintf('Conversia leului in Marca convertibila din Bosnia si Hertegovina este:')
    result = x / 2.5
    set(handles.input,'String',result)
    elseif choice == 19
    fprintf('Conversia leului in Manat turkmen este:')
    result = x / 1.25
    set(handles.input,'String',result)
    elseif choice == 20
    fprintf('Conversia leului in Lira sudanez este:')
    result = x / 0.07
    set(handles.input,'String',result)
    elseif choice == 21
    fprintf('Conversia leului in Lira egipteana este:')
    result = x / 0.3
    set(handles.input,'String',result)
    elseif choice == 22
    fprintf('Conversia leului in Lilangeni din Swaziland este:')
    result = x / 0.3
    set(handles.input,'String',result)
    elseif choice == 23
    fprintf('Conversia leului in Leva Bulgareasca este:')
    result = x / 2
    set(handles.input,'String',result)
    elseif choice == 24
    fprintf('Conversia leului in Leu Moldovenesc este:')
    result = x * 4.2761
    set(handles.input,'String',result)
    elseif choice == 25
    fprintf('Conversia leului in Leone din Sierra Leone este:')
    result = x * 2.4820365
    set(handles.input,'String',result)
    end


% --- Executes on button press in plotaretabel.
function plotaretabel_Callback(hObject, eventdata, handles)
% hObject    handle to plotaretabel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data=get(handles.uitable1,'data')
figure();
plot(data)
title('Plotare tabel')


% --- Executes on button press in image.
function image_Callback(hObject, eventdata, handles)
% hObject    handle to image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[input_file,pathname] = uigetfile( ...
{'*.jpeg', 'JPEG (*.jpeg)'; ...
'*.jpg', 'JPG (*.jpg)';...
'*.png', 'PNG (*.png)';...
'*.*', 'All Files (*.*)'}, ...
'Select files', ...
'MultiSelect', 'off');
if pathname == 0
    return
end
I = imread(uigetfile);
imshow(I,[])


% --- Executes on button press in ecuatii.
function ecuatii_Callback(hObject, eventdata, handles)
% hObject    handle to ecuatii (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = menu ('Alege ecuatia','Aria cercului','Theorema binomiala','Expasiunea Adunari','Seria Fourier','Teorema lui Pythagora','Formua Quadratic','Expansiunea lui Taylor','Trig identify 1','Trig identify 2')
pi = 3.14159265359
    if choice == 1
fprintf('A-ti selectat aria cercului')
str=get(handles.input,'String');
str=strcat(str,'A = pi*r^2');
set(handles.input,'String',str);
    elseif choice == 5
str=get(handles.input,'String');
str=strcat(str,'(a^2)+(b^2)=(c^2)');
set(handles.input,'String',str);       
    end


% --- Executes on button press in operator.
function operator_Callback(hObject, eventdata, handles)
% hObject    handle to operator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = menu('Operator','==','+=','-=','--','++','-+','+-')
    if choice == 1
str=get(handles.input,'String');
str=strcat(str,'==');
set(handles.input,'String',str); 
    elseif choice == 2
str=get(handles.input,'String');
str=strcat(str,'+=');
set(handles.input,'String',str); 
    elseif choice == 3
str=get(handles.input,'String');
str=strcat(str,'-=');
set(handles.input,'String',str);   
    elseif choice == 4
str=get(handles.input,'String');
str=strcat(str,'--');
set(handles.input,'String',str);
    elseif choice == 5
str=get(handles.input,'String');
str=strcat(str,'++');
set(handles.input,'String',str); 
    elseif choice == 6
str=get(handles.input,'String');
str=strcat(str,'-+');
set(handles.input,'String',str); 
    elseif choice == 7
str=get(handles.input,'String');
str=strcat(str,'+-');
set(handles.input,'String',str); 
    end


% --- Executes on button press in background.
function background_Callback(hObject, eventdata, handles)
% hObject    handle to background (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[input_file,pathname] = uigetfile( ...
{'*.jpeg', 'JPEG (*.jpeg)'; ...
'*.jpg', 'JPG (*.jpg)';...
'*.png', 'PNG (*.png)';...
'*.*', 'All Files (*.*)'}, ...
'Select files', ...
'MultiSelect', 'off');
if pathname == 0
    return
end
axes1(hObject)
imshow(uigetfile)
% plot(uigetfile)
% plot(pathname)
% plot(input_file)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% [input_file,pathname] = uigetfile( ...
% {'*.jpeg', 'JPEG (*.jpeg)'; ...
% '*.jpg', 'JPG (*.jpg)';...
% '*.png', 'PNG (*.png)';...
% '*.*', 'All Files (*.*)'}, ...
% 'Select files', ...
% 'MultiSelect', 'off');
% if pathname == 0
%     return
% end
% axes1(hObject)
% imshow(pathname)
% Hint: place code in OpeningFcn to populate axes1
