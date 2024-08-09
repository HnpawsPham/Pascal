uses crt;
var A:Array[1..4]of real;
i:integer;
begin
clrscr;
writeln('Nhap gia tri tung so');
for i:=1 to 4 do begin writeln('Nhap phan tu so ',i);read(a[i]);end;
for i:=2 to 4 do if a[i]>a[1] then a[1]:=a[i];
writeln('So lon nhat la: ',A[1]:1:0);
readln
end.