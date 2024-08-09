uses crt;
const inp='ktkhac.inp';out='ktkhac.out';
var st:string;
i,t,j,e,s,c:longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(t);for i:=1 to t do begin
readln(st);for c:=1 to 2 do begin
for j:=1 to length(st)-1 do begin
for e:=j+1 to length(St) do if st[j]=st[e]then
delete(st,pos(st[e],st),1);end; end;
for j:=1 to length(St) do inc(S);
writeln(s);s:=0;end;
close(input);close(output);
end.

