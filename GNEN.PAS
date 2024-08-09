uses crt;
var e,m,st:String;
i,t,j,o:integer;
f:boolean;
begin
clrscr;
read(st);for i:=1 to length(st) do if st[i] in ['0'..'9']then begin
val(st[i],t,o); for j:=1 to t do write(st[i+1]);t:=0;f:=false;end
else begin e:=chr(ord(st[i]));m:=chr(ord(st[i+1]));f:=true;
if (e<>m) and f then write(st[i]);end;
delay(9000);
end.
