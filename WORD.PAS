uses crt;
const inp='word.inp';out='word.out';
var st:string;
k:char;co:boolean;
tn,loc:Array[1..100]of string;
dem:array[1..100]of longint;

i,j,e,so,max,u:longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(st);read(k);
j:=1;co:=false;
for i:=1 to length(St) do
if st[i] in ['a'..'z'] then begin
tn[j]:=tn[j]+st[i];
dem[j]:=dem[j]+1;end
else inc(j);
for i:=1 to j do if tn[i]='' then begin
inc(so);
 for e:=i to j do begin tn[e]:=tn[e+1];
dem[e]:=dem[e+1];co:=true;end;end;
if co then for i:=1 to so do j:=j-1;
max:=1;
for i:=1 to j do if (tn[i][1]=k) then begin inc(u);loc[u]:=tn[i];
dem[u]:=dem[i];
end;
for i:=1 to u do if dem[i]>dem[max] then max:=i;
for i:=1 to u do if dem[i]=dem[max] then writeln(loc[i]);
close(input);close(output);
end.