uses crt;
const inp='clock.inp';out='clock.out';
var h,p,s,i,o,j:longint;
g,l:string;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(g);l:='';
for i:=1 to length(g) do if g[i]=':' then begin p:=i;break;end; 
for j:=1 to p-1 do begin l:=g[j]+l; val(l,h,o);end;l:='';
for j:=length(g) downto p+1 do 
begin 
l:=g[j]+l;
val(l,p,o);end;if (p/10) < 0 then p:=p*10;
repeat
repeat s:=s+1;writeln(h,':',p,':',s);
delay(1000);clrscr;
until s = 60;
while s=60 do begin p:=p+1;s:=0;end;
while p=60 do begin h:=h+1;p:=0;end;
if h=24 then begin s:=0;p:=0;h:=0;end;
until keypressed;
close(input);close(output);
end.
