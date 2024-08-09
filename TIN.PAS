Program Danhsachvabangdiem;
uses crt;
var i, n, a, b:integer;
Danhsachten:array[1..100]of string[40];
Diemsocot1,Diemsocot2,s:array[1..10]of real;
begin
clrscr;
a:=1;
 writeln('So hoc sinh can nhap:'); read(n);
 writeln('Nhap ten tung hoc sinh (khong chua dau cach)');
 for i:=0 to n do begin
 writeln('SBD',i,': ');
 readln(Danhsachten[i]);
 end;
writeln('Nhap diem cot 1 theo thu tu');
 for b:=1 to n do begin readln(Diemsocot1[b]);if Diemsocot1[b] > 10 then begin writeln('Diem so vua nhap khong hop le');
 for b:=1 to n do readln(Diemsocot1[b]);end;
writeln('Nhap diem cot 2 theo thu tu');
 for b:=1 to n do readln(Diemsocot2[b]);if Diemsocot2[b] > 10 then begin writeln('Diem so vua nhap khong hop le');
 for b:=1 to n do readln(Diemsocot2[b]);end;
 writeln('Ho va ten hoc sinh','        ','Diem so trung binh');
 for i:=1 to n do writeln('SBD ',i,' : ',Danhsachten[i],'               ' ,(Diemsocot1[i]+Diemsocot2[i])/2:1:2);
readln;
end.
