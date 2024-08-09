uses crt;
var nhap,xuat:text;
st,st1:string; dem,i:longint;
procedure cach1sai (var st:string);
begin dem:=0;
for i:=1 to length(st) do if st[i]=' ' then begin
st1:=copy(st,pos(st[i],st)+1,length(St));dem:=length(St)-length(st1);
delete(st,pos(st[i],st),dem);
st:=st+'_'+st1;
end;
end;
procedure cach2 (var sT:string);
var vitri:longint;
begin
while pos(' ',st)<>0 do begin vitri:=pos(' ',st);
delete(st,vitri,1);
insert('_',st,vitri);
end;
end;
begin
assign(nhap,'input8.txt');
reset(nhap);assign(xuat,'output8.txt');
rewrite(xuat);
readln(nhap,st);
cach2(st);
writeln(xuat,st);
close(nhap);close(xuat);
end.