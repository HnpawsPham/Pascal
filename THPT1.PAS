uses crt;
var i,can1,can2,max:longint;
dau,sau,luu1,luu2,cach:string;
const inp='thpt1.inp';


procedure xuli1 (var luu1:string;dau:string);
begin
luu1:=copy(dau,2,length(dau))+dau[1];
end;
procedure xuli2 (var luu2:string;dau:string);
begin
luu2:=dau[length(dau)]+copy(dau,1,length(dau)-1);
end;

procedure bang;
var duong,tren:string;
hang:longint;
begin  cach:=''; hang:=9;
for i:=1 to max do cach:=cach+' ';
duong:='|'+cach+'|';
for i:=1 to max-2 do tren:='-'+tren;
gotoxy(2,8);textcolor(3);
writeln(tren);
for i:=1 to 4 do begin
gotoxy(2,hang);textcolor(3);
writeln(duong);inc(hang);end;
writeln(tren);
end;
begin
assign(input,inp);reset(input);
readln(dau);readln(sau);
if length(sau)>length(dau) then max:=length(sau)+2 else max:=length(Dau)+2;
can1:=(80-length(dau))div 2;can2:=(80-length(sau))div 2;
bang;
repeat
inc(i);
gotoxy(can1,10);
textcolor(i);
writeln(dau);
gotoxy(can2,11);
writeln(sau);
xuli1(luu1,dau);xuli2(luu2,sau);
dau:=luu1;sau:=luu2;delay(150);
if i>15 then i:=0;
until keypressed;
clrscr;
close(input);
end.
