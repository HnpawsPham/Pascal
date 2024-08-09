uses crt;
const inp='countsq.inp';out='countsq.out';
var hang,cot,i,j,e,max:longint;
a:Array[1..100,1..100] of longint;
dem:array[1..100] of longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(hang,cot);
for i:=1 to hang do for j:=1 to cot do read(a[i,j]);
for i:=1 to hang-1 do for j:=1 to cot-1 do if
(a[i,j]=a[i+1,j]) and
(a[i,j]=a[i+1,j+1]) and (a[i,j]=a[i,j+1]) then inc(dem[a[i,j]]);
for i:=1 to 100 do if dem[i]>max then max:=dem[i];
writeln(max);
close(input);close(output);
end.