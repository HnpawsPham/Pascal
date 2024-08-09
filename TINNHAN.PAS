uses crt;
const inp='tinnhan.inp';out='tinnhan.out';
var st,str9:string;
i,j,max,luu,count:longint;k:integer;
tn:array[1..100]of string;
dem:Array[1..100]of longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(st,k); j:=1;
for i:=1 to length(St) do
if st[i]<>'#' then begin
tn[j]:=tn[j]+st[i]; dem[j]:=dem[j]+1;end
else inc(j);max:=1;
for i:=1 to j do if dem[i]>dem[max] then max:=i;
for i:=1 to j do if dem[i]=dem[max] then
begin inc(count);
 if i<max then begin luu:=i;
halt;end
else luu:=max; end;
for i:=1 to length(tn[luu]) do if tn[luu][i] in ['A'.. 'Z'] then
str9:=str9+chr(ord(tn[luu][i])-k);
writeln(count);
writeln(str9);
close(input);close(output);
end.