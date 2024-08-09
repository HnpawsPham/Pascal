uses crt;
const inp='mahoa.inp';out='mahoa.out';
var xau:string;
s,i:integer;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
while not eof do begin
readln(xau);S:=1;
for i:=1 to length(xau) do begin
if xau[i]=xau[i+1] then s:=s+1
else begin
if s=1 then write(xau[i]) else write(s,xau[i]);s:=1;end;end;end;
close(input);close(output);
end.