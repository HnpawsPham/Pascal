uses crt;
const inp='mulone.inp';out='mulone.out';
var k,n,i:longint;
procedure xuli(var t:longint);
var tam:string;code:integer;i:longint;
begin;
tam:='';i:=1;
if t>1 then begin
for i:=1 to t do
tam:=tam+'1';
val(tam,t,code);end
 else if t=1 then t:=1 else t:=0;
t:=sqr(t);
writeln(t);
end;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(k);
for i:=1 to k do begin readln(n);
xuli(n);
end;
close(input);close(output);
end.