uses crt;
const inp='DOIXUNG.INP';out='DOIXUNG.OUT';
var n:longint;

function pt(a:longint):string;
var du:integer;
s,t:string;
begin
s:='';t:='';
while a<>0 do
begin du:=a mod 2;
a:=a div 2; str(du,t);
s:=t+s;end;
pt:=s;
end;

function doixung(a:longint):boolean;
var tam,nguoc:string;
i:integer;
begin
tam:=pt(a);nguoc:='';
for i:=length(tam) downto 1 do begin
nguoc:=nguoc+tam[i];
if nguoc=tam then doixung:=true
else doixung:=false;
end;
 end;
procedure xuli(n:longint);
var i:longint;
begin
writeln(n);
for i:=1 to n do
if doixung(i) then writeln(i,' ',pt(i));
end;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(N);
xuli(n);
close(input);close(output);
end.