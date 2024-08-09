uses crt;
var A:array[1..1000]of string;
i,j,n,S,chon:integer; b:string;
begin
clrscr;chon:=1;repeat
writeln('Nhap so phan tu muon nhap cho mang');read(n);
writeln('Nhap gia tri vao mang');
for i:=0 to n do readln(A[i]);
writeln('Nhap gia tri muon tim cac gia tri dong dang');read(b);
for j:=0 to n do if A[j] = b then begin
S:=S+1;
writeln(A[j],' -phan tu thu ',j);
end;if S=0 then writeln('Khong co phan tu nao dong dang voi phan tu da cho')
else
writeln('Tong cac gia tri dong dang voi ',b,' (khong ke phan tu da cho) la: ',S-1);
writeln('Tim cac gia tri dong dang khac?  1.Co    0.Khong');read(chon);S:=0;until chon=0;
readln
end.
