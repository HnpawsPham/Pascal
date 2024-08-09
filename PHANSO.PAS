uses crt;
const inp='phanso.inp';out='phanso.out';
var uc,i,m,t:longint;st,tam1,tam2:string; code:integer;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(st);tam1:=''; tam2:='';
for i:=1 to pos('/',st)-1 do
if st[i]<>'/' then tam1:=tam1+st[i];
for i:=pos('/',st)+1 to length(St) do
if st[i]<>'/' then tam2:=tam2+st[i];
val(tam1,t,code);val(tam2,m,code);
for i:=1 to t do if (t mod i=0) and (m mod i=0) then uc:=i;
writeln(t/uc:2:0,'/',m/uc:2:0);
close(input);close(output);
end.

