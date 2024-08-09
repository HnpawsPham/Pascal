uses crt;
const inp='lexdiv.inp';out='lexdiv.out';
var a,b,k,i:longint;min:string;
tam:array[1..100]of string;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(a,b,k); min:=';';
for i:=a to b do if i mod k=0 then begin
str(i,tam[i]);if tam[i]<min then min:=tam[i];end;
writeln(min);
close(input);close(output);
end.