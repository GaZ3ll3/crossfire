function varargout = crossfire(varargin)
% CROSSFIRE MATLAB code for crossfire.fig
%      CROSSFIRE, by itself, creates a new CROSSFIRE or raises the existing
%      singleton*.
%
%      H = CROSSFIRE returns the handle to a new CROSSFIRE or the handle to
%      the existing singleton*.
%
%      CROSSFIRE('CALLBACK',hObj,eventData,h,...) calls the local
%      function named CALLBACK in CROSSFIRE.M with the given input arguments.
%
%      CROSSFIRE('Property','Value',...) creates a new CROSSFIRE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before crossfire_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to crossfire_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help crossfire

% Last Modified by GUIDE v2.5 03-Sep-2014 02:20:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @crossfire_OpeningFcn, ...
                   'gui_OutputFcn',  @crossfire_OutputFcn, ...
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


% --- Executes just before crossfire is made visible.
function crossfire_OpeningFcn(hObj, eventdata, h, varargin)
% This function has no output args, see OutputFcn.
% hObj    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
% varargin   command line arguments to crossfire (see VARARGIN)

% Choose default command line output for crossfire
h.output = hObj;

% Initialize GUI components
global ha;
clc;

start = 0;

ha(start + 1) = h.A11;
ha(start + 2) = h.A12;
ha(start + 3) = h.A13;
ha(start + 4) = h.A14;
ha(start + 5) = h.A15;
ha(start + 6) = h.A21;
ha(start + 7) = h.A22;
ha(start + 8) = h.A23;
ha(start + 9) = h.A24;
ha(start + 10) = h.A25;
ha(start + 11) = h.A31;
ha(start + 12) = h.A32;
ha(start + 13) = h.A33;
ha(start + 14) = h.A34;
ha(start + 15) = h.A35;
ha(start + 16) = h.A41;
ha(start + 17) = h.A42;
ha(start + 18) = h.A43;
ha(start + 19) = h.A44;
ha(start + 20) = h.A45;
ha(start + 21) = h.A51;
ha(start + 22) = h.A52;
ha(start + 23) = h.A53;
ha(start + 24) = h.A54;
ha(start + 25) = h.A55;
ha(start + 26) = h.A61;
ha(start + 27) = h.A62;
ha(start + 28) = h.A63;
ha(start + 29) = h.A64;
ha(start + 30) = h.A65;

start = 30;

ha(start + 1) = h.B11;
ha(start + 2) = h.B12;
ha(start + 3) = h.B13;
ha(start + 4) = h.B14;
ha(start + 5) = h.B15;
ha(start + 6) = h.B21;
ha(start + 7) = h.B22;
ha(start + 8) = h.B23;
ha(start + 9) = h.B24;
ha(start + 10) = h.B25;
ha(start + 11) = h.B31;
ha(start + 12) = h.B32;
ha(start + 13) = h.B33;
ha(start + 14) = h.B34;
ha(start + 15) = h.B35;
ha(start + 16) = h.B41;
ha(start + 17) = h.B42;
ha(start + 18) = h.B43;
ha(start + 19) = h.B44;
ha(start + 20) = h.B45;
ha(start + 21) = h.B51;
ha(start + 22) = h.B52;
ha(start + 23) = h.B53;
ha(start + 24) = h.B54;
ha(start + 25) = h.B55;
ha(start + 26) = h.B61;
ha(start + 27) = h.B62;
ha(start + 28) = h.B63;
ha(start + 29) = h.B64;
ha(start + 30) = h.B65;

start = 60;

ha(start + 1) = h.C11;
ha(start + 2) = h.C12;
ha(start + 3) = h.C13;
ha(start + 4) = h.C14;
ha(start + 5) = h.C15;
ha(start + 6) = h.C21;
ha(start + 7) = h.C22;
ha(start + 8) = h.C23;
ha(start + 9) = h.C24;
ha(start + 10) = h.C25;
ha(start + 11) = h.C31;
ha(start + 12) = h.C32;
ha(start + 13) = h.C33;
ha(start + 14) = h.C34;
ha(start + 15) = h.C35;
ha(start + 16) = h.C41;
ha(start + 17) = h.C42;
ha(start + 18) = h.C43;
ha(start + 19) = h.C44;
ha(start + 20) = h.C45;
ha(start + 21) = h.C51;
ha(start + 22) = h.C52;
ha(start + 23) = h.C53;
ha(start + 24) = h.C54;
ha(start + 25) = h.C55;
ha(start + 26) = h.C61;
ha(start + 27) = h.C62;
ha(start + 28) = h.C63;
ha(start + 29) = h.C64;
ha(start + 30) = h.C65;

start = 90;

ha(start + 1) = h.D11;
ha(start + 2) = h.D12;
ha(start + 3) = h.D13;
ha(start + 4) = h.D14;
ha(start + 5) = h.D15;
ha(start + 6) = h.D21;
ha(start + 7) = h.D22;
ha(start + 8) = h.D23;
ha(start + 9) = h.D24;
ha(start + 10) = h.D25;
ha(start + 11) = h.D31;
ha(start + 12) = h.D32;
ha(start + 13) = h.D33;
ha(start + 14) = h.D34;
ha(start + 15) = h.D35;
ha(start + 16) = h.D41;
ha(start + 17) = h.D42;
ha(start + 18) = h.D43;
ha(start + 19) = h.D44;
ha(start + 20) = h.D45;
ha(start + 21) = h.D51;
ha(start + 22) = h.D52;
ha(start + 23) = h.D53;
ha(start + 24) = h.D54;
ha(start + 25) = h.D55;
ha(start + 26) = h.D61;
ha(start + 27) = h.D62;
ha(start + 28) = h.D63;
ha(start + 29) = h.D64;
ha(start + 30) = h.D65;


start = 120;
ha(start + 1) = h.AB;
ha(start + 2) = h.BC;
ha(start + 3) = h.CD;
ha(start + 4) = h.DA;

ha(start + 5) = h.OA;
ha(start + 6) = h.OB;
ha(start + 7) = h.OC;
ha(start + 8) = h.OD;

ha(start + 9) = h.O;
% end of boxes




h.r =  imread(strcat('images/r','.png'));
h.r0 =  imread(strcat('images/r0','.png'));
h.r1 =  imread(strcat('images/r1','.png'));
h.r2 =  imread(strcat('images/r2','.png'));
h.r3 =  imread(strcat('images/r3','.png'));
h.r4 =  imread(strcat('images/r4','.png'));
h.r5 =  imread(strcat('images/r5','.png'));
h.r6 =  imread(strcat('images/r6','.png'));
h.r7 =  imread(strcat('images/r7','.png'));
h.r8 =  imread(strcat('images/r8','.png'));
h.r9 =  imread(strcat('images/r9','.png'));
h.r10 =  imread(strcat('images/r10','.png'));
h.r11 =  imread(strcat('images/r11','.png'));


h.b =  imread(strcat('images/b','.png'));
h.b0 =  imread(strcat('images/b0','.png'));
h.b1 =  imread(strcat('images/b1','.png'));
h.b2 =  imread(strcat('images/b2','.png'));
h.b3 =  imread(strcat('images/b3','.png'));
h.b4 =  imread(strcat('images/b4','.png'));
h.b5 =  imread(strcat('images/b5','.png'));
h.b6 =  imread(strcat('images/b6','.png'));
h.b7 =  imread(strcat('images/b7','.png'));
h.b8 =  imread(strcat('images/b8','.png'));
h.b9 =  imread(strcat('images/b9','.png'));
h.b10 =  imread(strcat('images/b10','.png'));
h.b11 =  imread(strcat('images/b11','.png'));


h.g =  imread(strcat('images/g','.png'));
h.g0 =  imread(strcat('images/g0','.png'));
h.g1 =  imread(strcat('images/g1','.png'));
h.g2 =  imread(strcat('images/g2','.png'));
h.g3 =  imread(strcat('images/g3','.png'));
h.g4 =  imread(strcat('images/g4','.png'));
h.g5 =  imread(strcat('images/g5','.png'));
h.g6 =  imread(strcat('images/g6','.png'));
h.g7 =  imread(strcat('images/g7','.png'));
h.g8 =  imread(strcat('images/g8','.png'));
h.g9 =  imread(strcat('images/g9','.png'));
h.g10 =  imread(strcat('images/g10','.png'));
h.g11 =  imread(strcat('images/g11','.png'));


h.d =  imread(strcat('images/d','.png'));
h.d0 =  imread(strcat('images/d0','.png'));
h.d1 =  imread(strcat('images/d1','.png'));
h.d2 =  imread(strcat('images/d2','.png'));
h.d3 =  imread(strcat('images/d3','.png'));
h.d4 =  imread(strcat('images/d4','.png'));
h.d5 =  imread(strcat('images/d5','.png'));
h.d6 =  imread(strcat('images/d6','.png'));
h.d7 =  imread(strcat('images/d7','.png'));
h.d8 =  imread(strcat('images/d8','.png'));
h.d9 =  imread(strcat('images/d9','.png'));
h.d10 =  imread(strcat('images/d10','.png'));
h.d11 =  imread(strcat('images/d11','.png'));


% setup variables for board
h.from  = 'A';
h.fromX = 1;
h.fromY = 1;
h.fromP = -1;

h.to    = 'A';
h.toX   = 1;
h.toY   = 1;
h.toP   = -1;

h.X = 0;
h.Y = 0;

h.position = -1;
h.first_click = 0;

h.pos = -ones(129, 1);
h.piece = -ones(100,1);

% all hidden
h.flags = [0,0,0,0];
h.loss  = [0,0,0,0];

h.finished = 0;
h.steps = 0;

h.aiplay = 0;

h.human = 0;
% preallocate
h.stat = zeros(2000,2);

h.ptr  = 0;



%%%%%%%%%%%%%%%%%%%%%%%%%



% For threat field use

h.threat = zeros(129 ,4);
h.estimate = zeros(129, 4);





%%%%%%%%%%%%%%%%%%%%%%%%%


h.rail1 = [6, 11, 16, 21, 26,  124 , 128, 123, 90, 85, 80, 75, 70];
h.rail = h.rail1;
h.rail2 = [10, 15, 20, 25, 30, 121 , 126 ,122, 86, 81, 76, 71, 66];
h.rail = union(h.rail, h.rail2);
h.rail3 = [36, 41, 46, 51, 56, 121,  125, 124, 120, 115, 110, 105, 100];
h.rail = union(h.rail, h.rail3);
h.rail4 = [40, 45, 50, 55, 60, 122,  127, 123, 116, 111, 106, 101, 96];
h.rail = union(h.rail, h.rail4);
h.rail5 = [28, 125, 129, 127, 88];
h.rail = union(h.rail, h.rail5);
h.rail6 = [58, 126, 129, 128, 118];
h.rail = union(h.rail, h.rail6);
h.rail7 = [6, 7, 8, 9, 10];
h.rail = union(h.rail, h.rail7);
h.rail8 = [36, 37, 38, 39, 40];
h.rail = union(h.rail, h.rail8);
h.rail9 = [66, 67, 68, 69, 70];
h.rail = union(h.rail, h.rail9);
h.rail10 = [96, 97, 98, 99, 100];
h.rail = union(h.rail, h.rail10);
h.rail11 = [6, 11, 16, 21, 26, 120, 115, 110, 105, 100];
h.rail = union(h.rail, h.rail11);
h.rail12 = [10, 15, 20, 25, 30, 56, 51, 46, 41, 36];
h.rail = union(h.rail, h.rail12);
h.rail13 = [40, 45, 50, 55, 60, 86, 81, 76, 71, 66];
h.rail = union(h.rail, h.rail13);
h.rail14 = [96, 101, 106, 111, 116, 90, 85, 80, 75, 70];
h.rail = union(h.rail, h.rail14);
h.rail15 = [26, 27, 28, 29, 30];
h.rail = union(h.rail, h.rail15);
h.rail16 = [56, 57, 58, 59, 60];
h.rail = union(h.rail, h.rail16);
h.rail17 = [86, 87, 88, 89, 90];
h.rail = union(h.rail, h.rail17);
h.rail18 = [116, 117, 118, 119, 120];
h.rail = union(h.rail, h.rail18);


% adjacency matrix
h.railadj = zeros(129, 129);
for k = 1:18
    temp = h.(genvarname(strcat('rail', int2str(k))));
    for l = 1:max(size(temp, 2), size(temp, 1)) - 1
        h.railadj(temp(l), temp(l+1)) = 1;
        h.railadj(temp(l + 1), temp(l)) = 1;
    end
end


h.alladj = h.railadj;

for i = 1:4
    for j = 1:6
        for k = 1:4
            h.alladj((i - 1)*30 + 5*(j - 1) + k,(i - 1)*30 + 5*(j - 1) + k + 1)  = 1;
            h.alladj((i - 1)*30 + 5*(j - 1) + k + 1, (i - 1)*30 + 5*(j - 1) + k)  = 1;            
        end
    end
end

for i = 1:4
    for k = 1:5
        for j = 1:5
            h.alladj((i - 1)*30 + 5*(j  - 1) + k, (i-1)*30 + 5*j + k) = 1;
            h.alladj((i - 1)*30 + 5*j + k, (i - 1)*30 + 5*(j  - 1) + k) = 1;            
        end
    end
end


shifts = [-4, 4, -6, 6];
keys = [12, 14, 18, 22, 24];

for i = 1:4
    for j = 1:4
        for k = 1:5
            h.alladj((i-1)*30 + keys(k),(i-1)*30 + keys(k) + shifts(j)) = 1;
            h.alladj((i-1)*30 + keys(k) + shifts(j), (i-1)*30 + keys(k)) = 1;
        end
    end
end

 



h.player.color = 'g';
% setup board for each player and check board
h.player1.color = 'r';
h.player1_open = [...
    4 1 10 11 10;...
    9 0  3 10  3;...
    2 -1 2 -1  1;...
    7 1 -1 9   2;...
    4 -1 0 -1  6;...
    5 8  0 5   6];





h.player2.color = 'b';
h.player3.color = 'g';
h.player4.color = 'd';

h = importpiece(ha, h, h.player1.color, h.player1_open);

h = importpiece(ha, h, h.player2.color, h.player1_open);

h = importpiece(ha, h, h.player3.color, h.player1_open);

h = importpiece(ha, h, h.player4.color, h.player1_open);




% Update h structure
guidata(hObj, h);
% UIWBIT makes crossfire wait for user response (see UIRESUME)
% uiwait(h.crossfire);

% AI INTERFACE


% while loop, if finished is not 1, then run aiagent

% design of aiagent 


% four ai functions, aiagent calls the handle, give them adapted
% information. And ai functions return move and also openning layout.

% aiagent will execute the move by using following statement
%  simulate('C',6,5, 'D', 6, 1, h, hObj);


% while (h.player.color ~= 'w' || h.player.color ~= 'l') 





            

% end






% --- Outputs from this function are returned to the command line.
function varargout = crossfire_OutputFcn(hObj, eventdata, h) 
% varargout  cell array for returning output args (see VBRBRGOUT);
% hObj    handle to figure
% eventdata  reserved - to be defined in a future version of MBTLBB
% h    structure with h and user data (see GUIDBTB)

% Get default command line output from h structure
varargout{1} = h.output;


% --- Executes on button press in B11.
function A11_Callback(hObj, eventdata, h)
% hObj    handle to B11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 1; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);


% --- Executes on button press in A12.
function A12_Callback(hObj, eventdata, h)
% hObj    handle to A12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 1; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A13.
function A13_Callback(hObj, eventdata, h)
% hObj    handle to A13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 1; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A14.
function A14_Callback(hObj, eventdata, h)
% hObj    handle to A14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 1; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A15.
function A15_Callback(hObj, eventdata, h)
% hObj    handle to A15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 1; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A21.
function A21_Callback(hObj, eventdata, h)
% hObj    handle to A21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 2; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A22.
function A22_Callback(hObj, eventdata, h)
% hObj    handle to A22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 2; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A23.
function A23_Callback(hObj, eventdata, h)
% hObj    handle to A23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 2; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A24.
function A24_Callback(hObj, eventdata, h)
% hObj    handle to A24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 2; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A25.
function A25_Callback(hObj, eventdata, h)
% hObj    handle to A25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 2; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A31.
function A31_Callback(hObj, eventdata, h)
% hObj    handle to A31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 3; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A32.
function A32_Callback(hObj, eventdata, h)
% hObj    handle to A32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 3; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A33.
function A33_Callback(hObj, eventdata, h)
% hObj    handle to A33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 3; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A34.
function A34_Callback(hObj, eventdata, h)
% hObj    handle to A34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 3; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A35.
function A35_Callback(hObj, eventdata, h)
% hObj    handle to A35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 3; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A41.
function A41_Callback(hObj, eventdata, h)
% hObj    handle to A41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 4; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A42.
function A42_Callback(hObj, eventdata, h)
% hObj    handle to A42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 4; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A43.
function A43_Callback(hObj, eventdata, h)
% hObj    handle to A43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 4; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A44.
function A44_Callback(hObj, eventdata, h)
% hObj    handle to A44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 4; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A45.
function A45_Callback(hObj, eventdata, h)
% hObj    handle to A45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X =4; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A51.
function A51_Callback(hObj, eventdata, h)
% hObj    handle to A51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 5; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A52.
function A52_Callback(hObj, eventdata, h)
% hObj    handle to A52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 5; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A53.
function A53_Callback(hObj, eventdata, h)
% hObj    handle to A53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 5; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A54.
function A54_Callback(hObj, eventdata, h)
% hObj    handle to A54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 5; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A55.
function A55_Callback(hObj, eventdata, h)
% hObj    handle to A55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 5; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A61.
function A61_Callback(hObj, eventdata, h)
% hObj    handle to A61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 6; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A62.
function A62_Callback(hObj, eventdata, h)
% hObj    handle to A62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 6; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A63.
function A63_Callback(hObj, eventdata, h)
% hObj    handle to A63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 6; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A64.
function A64_Callback(hObj, eventdata, h)
% hObj    handle to A64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 6; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in A65.
function A65_Callback(hObj, eventdata, h)
% hObj    handle to A65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'A';
h.X = 6; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C65.
function C65_Callback(hObj, eventdata, h)
% hObj    handle to C65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 6; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C64.
function C64_Callback(hObj, eventdata, h)
% hObj    handle to C64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 6; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C63.
function C63_Callback(hObj, eventdata, h)
% hObj    handle to C63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 6; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C62.
function C62_Callback(hObj, eventdata, h)
% hObj    handle to C62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 6; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C61.
function C61_Callback(hObj, eventdata, h)
% hObj    handle to C61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 6; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C55.
function C55_Callback(hObj, eventdata, h)
% hObj    handle to C55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 5; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C54.
function C54_Callback(hObj, eventdata, h)
% hObj    handle to C54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 5; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C53.
function C53_Callback(hObj, eventdata, h)
% hObj    handle to C53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 5; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C52.
function C52_Callback(hObj, eventdata, h)
% hObj    handle to C52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 5; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C51.
function C51_Callback(hObj, eventdata, h)
% hObj    handle to C51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 5; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C45.
function C45_Callback(hObj, eventdata, h)
% hObj    handle to C45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 4; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C44.
function C44_Callback(hObj, eventdata, h)
% hObj    handle to C44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 4; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C43.
function C43_Callback(hObj, eventdata, h)
% hObj    handle to C43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 4; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C42.
function C42_Callback(hObj, eventdata, h)
% hObj    handle to C42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 4; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C41.
function C41_Callback(hObj, eventdata, h)
% hObj    handle to C41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 4; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C35.
function C35_Callback(hObj, eventdata, h)
% hObj    handle to C35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 3; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C34.
function C34_Callback(hObj, eventdata, h)
% hObj    handle to C34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 3; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C33.
function C33_Callback(hObj, eventdata, h)
% hObj    handle to C33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 3; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C32.
function C32_Callback(hObj, eventdata, h)
% hObj    handle to C32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 3; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C31.
function C31_Callback(hObj, eventdata, h)
% hObj    handle to C31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 3; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C25.
function C25_Callback(hObj, eventdata, h)
% hObj    handle to C25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 2; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C24.
function C24_Callback(hObj, eventdata, h)
% hObj    handle to C24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 2; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C23.
function C23_Callback(hObj, eventdata, h)
% hObj    handle to C23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 2; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C22.
function C22_Callback(hObj, eventdata, h)
% hObj    handle to C22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 2; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C21.
function C21_Callback(hObj, eventdata, h)
% hObj    handle to C21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 2; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C15.
function C15_Callback(hObj, eventdata, h)
% hObj    handle to C15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 1; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C14.
function C14_Callback(hObj, eventdata, h)
% hObj    handle to C14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 1; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C13.
function C13_Callback(hObj, eventdata, h)
% hObj    handle to C13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 1; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C12.
function C12_Callback(hObj, eventdata, h)
% hObj    handle to C12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 1; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in C11.
function C11_Callback(hObj, eventdata, h)
% hObj    handle to C11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'C';
h.X = 1; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B61.
function B61_Callback(hObj, eventdata, h)
% hObj    handle to B61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 6; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B51.
function B51_Callback(hObj, eventdata, h)
% hObj    handle to B51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 5; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B41.
function B41_Callback(hObj, eventdata, h)
% hObj    handle to B41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 4; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B31.
function B31_Callback(hObj, eventdata, h)
% hObj    handle to B31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 3; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B21.
function B21_Callback(hObj, eventdata, h)
% hObj    handle to B21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 2; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B62.
function B62_Callback(hObj, eventdata, h)
% hObj    handle to B62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 6; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B52.
function B52_Callback(hObj, eventdata, h)
% hObj    handle to B52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 5; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B42.
function B42_Callback(hObj, eventdata, h)
% hObj    handle to B42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 4; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B32.
function B32_Callback(hObj, eventdata, h)
% hObj    handle to B32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 3; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B22.
function B22_Callback(hObj, eventdata, h)
% hObj    handle to B22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 2; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B63.
function B63_Callback(hObj, eventdata, h)
% hObj    handle to B63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 6; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B53.
function B53_Callback(hObj, eventdata, h)
% hObj    handle to B53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 5; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B43.
function B43_Callback(hObj, eventdata, h)
% hObj    handle to B43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 4; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B33.
function B33_Callback(hObj, eventdata, h)
% hObj    handle to B33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 3; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B23.
function B23_Callback(hObj, eventdata, h)
% hObj    handle to B23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 2; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B64.
function B64_Callback(hObj, eventdata, h)
% hObj    handle to B64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 6; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B54.
function B54_Callback(hObj, eventdata, h)
% hObj    handle to B54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 5; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B44.
function B44_Callback(hObj, eventdata, h)
% hObj    handle to B44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 4; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B34.
function B34_Callback(hObj, eventdata, h)
% hObj    handle to B34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 3; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B24.
function B24_Callback(hObj, eventdata, h)
% hObj    handle to B24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 2; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B65.
function B65_Callback(hObj, eventdata, h)
% hObj    handle to B65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 6; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B55.
function B55_Callback(hObj, eventdata, h)
% hObj    handle to B55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 5; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B45.
function B45_Callback(hObj, eventdata, h)
% hObj    handle to B45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 4; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B35.
function B35_Callback(hObj, eventdata, h)
% hObj    handle to B35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 3; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B25.
function B25_Callback(hObj, eventdata, h)
% hObj    handle to B25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 2; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B11.
function B11_Callback(hObj, eventdata, h)
% hObj    handle to B11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 1; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B12.
function B12_Callback(hObj, eventdata, h)
% hObj    handle to B12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 1; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B13.
function B13_Callback(hObj, eventdata, h)
% hObj    handle to B13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 1; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B14.
function B14_Callback(hObj, eventdata, h)
% hObj    handle to B14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 1; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in B15.
function B15_Callback(hObj, eventdata, h)
% hObj    handle to B15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'B';
h.X = 1; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D25.
function D25_Callback(hObj, eventdata, h)
% hObj    handle to D25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 2; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D35.
function D35_Callback(hObj, eventdata, h)
% hObj    handle to D35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 3; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D45.
function D45_Callback(hObj, eventdata, h)
% hObj    handle to D45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 4; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D55.
function D55_Callback(hObj, eventdata, h)
% hObj    handle to D55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 5; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D65.
function D65_Callback(hObj, eventdata, h)
% hObj    handle to D65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 6; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D24.
function D24_Callback(hObj, eventdata, h)
% hObj    handle to D24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 2; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D34.
function D34_Callback(hObj, eventdata, h)
% hObj    handle to D34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 3; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D44.
function D44_Callback(hObj, eventdata, h)
% hObj    handle to D44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 4; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D54.
function D54_Callback(hObj, eventdata, h)
% hObj    handle to D54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 5; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D64.
function D64_Callback(hObj, eventdata, h)
% hObj    handle to D64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 6; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D23.
function D23_Callback(hObj, eventdata, h)
% hObj    handle to D23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 2; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D33.
function D33_Callback(hObj, eventdata, h)
% hObj    handle to D33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 3; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D43.
function D43_Callback(hObj, eventdata, h)
% hObj    handle to D43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 4; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D53.
function D53_Callback(hObj, eventdata, h)
% hObj    handle to D53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 5; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D63.
function D63_Callback(hObj, eventdata, h)
% hObj    handle to D63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 6; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D22.
function D22_Callback(hObj, eventdata, h)
% hObj    handle to D22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 2; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D32.
function D32_Callback(hObj, eventdata, h)
% hObj    handle to D32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 3; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D42.
function D42_Callback(hObj, eventdata, h)
% hObj    handle to D42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.from = 'D';
h.X = 4; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D52.
function D52_Callback(hObj, eventdata, h)
% hObj    handle to D52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 5; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D62.
function D62_Callback(hObj, eventdata, h)
% hObj    handle to D62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 6; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D21.
function D21_Callback(hObj, eventdata, h)
% hObj    handle to D21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 2; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D31.
function D31_Callback(hObj, eventdata, h)
% hObj    handle to D31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 3; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D41.
function D41_Callback(hObj, eventdata, h)
% hObj    handle to D41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 4; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D51.
function D51_Callback(hObj, eventdata, h)
% hObj    handle to D51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 5; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D61.
function D61_Callback(hObj, eventdata, h)
% hObj    handle to D61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 6; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D15.
function D15_Callback(hObj, eventdata, h)
% hObj    handle to D15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 1; h.Y = 5;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D14.
function D14_Callback(hObj, eventdata, h)
% hObj    handle to D14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 1; h.Y = 4;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D13.
function D13_Callback(hObj, eventdata, h)
% hObj    handle to D13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 1; h.Y = 3;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D12.
function D12_Callback(hObj, eventdata, h)
% hObj    handle to D12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 1; h.Y = 2;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in D11.
function D11_Callback(hObj, eventdata, h)
% hObj    handle to D11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'D';
h.X = 1; h.Y = 1;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in DA.
function DA_Callback(hObj, eventdata, h)
% hObj    handle to DA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'DA';
h.X = 0; h.Y = 0;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in OD.
function OD_Callback(hObj, eventdata, h)
% hObj    handle to OD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'OD';
h.X = 0; h.Y = 0;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in CD.
function CD_Callback(hObj, eventdata, h)
% hObj    handle to CD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'CD';
h.X = 0; h.Y = 0;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in OC.
function OC_Callback(hObj, eventdata, h)
% hObj    handle to OC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'OC';
h.X = 0; h.Y = 0;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in BC.
function BC_Callback(hObj, eventdata, h)
% hObj    handle to BC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'BC';
h.X = 0; h.Y = 0;
h = playturn(ha, h);

guidata(hObj, h);

% --- Executes on button press in OB.
function OB_Callback(hObj, eventdata, h)
% hObj    handle to OB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'OB';
h.X = 0; h.Y = 0;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in AB.
function AB_Callback(hObj, eventdata, h)
% hObj    handle to AB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'AB';
h.X = 0; h.Y = 0;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in OA.
function OA_Callback(hObj, eventdata, h)
% hObj    handle to OA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'OA';
h.X = 0; h.Y = 0;
h = playturn(ha, h);
guidata(hObj, h);

% --- Executes on button press in O.
function O_Callback(hObj, eventdata, h)
% hObj    handle to O (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% h    structure with h and user data (see GUIDATA)
global ha;
h.side = 'O';
h.X = 0; h.Y = 0;
h = playturn(ha, h);
guidata(hObj, h);


% --- Executes when entered data in editable cell(s) in record.
function record_CellEditCallback(hObj, eventdata, h)
% hObject    handle to record (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in AI.
function AI_Callback(hObj, eventdata, h)
% hObject    handle to AI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ha;
h.aiplay = ~h.aiplay;
if (h.aiplay == 1)
    set(h.AI,'String','AI Status: Online');
    while(h.player.color ~= 'w' && h.player.color ~= 'l') 
        
        if h.human == 1
            if h.player.color == 'r' || h.player.color == 'b' || h.player.color == 'd'

                [h,frompos, topos] = aiagent(ha, hObj);
                if frompos == -1 || topos == -1
                    h.player.color = next_color(h);
                    guidata(hObj, h);
                    continue;         
                end
                h = simulate(frompos, topos, hObj);

            elseif h.player.color == 'g'
                uiwait(h.crossfire);

            end    
        elseif h.human == 0
            if h.player.color == 'r' || h.player.color == 'b' || h.player.color == 'd' || h.player.color == 'g'
                [h,frompos, topos] = aiagent(ha, hObj);
                if frompos == -1 || topos == -1
                    h.player.color = next_color(h);
                    guidata(hObj, h);
                    continue;         
                end
                h = simulate(frompos, topos, hObj);
            end
            
        end
    end
    guidata(hObj, h);
    disp('game over');
    set(h.AI,'String', 'AI Status: Offline')
    h.aiplay = 0;
else
    set(h.AI,'String', 'AI Status: Offline')
end
guidata(hObj, h);
