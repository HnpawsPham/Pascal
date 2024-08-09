uses crt;
const inp='countn.inp';out='countn.out';
var n,i,d,t,c,j:integer;

procedure dem(n:integer);
begin j:=1;i:=1;d:=0;c:=0;
while c<n-1 do begin
while t<n-1 do begin 
t:=t+i;inc(i)end;
if t=n then inc(d);
i:=j+1;
inc(c);inc(j);
t:=0;end;
writeln(d);d:=0;
end;

begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
while not eof(input) do begin
readln(n);
dem(n);end;
close(input);close(output);
end.



