uses crt;
var A:array[1..1000] of integer;
ol,s,i,n,u,b,l,j,k:integer;
begin
clrscr;
writeln('Muon nhap bao nhieu phan tu?');read(n);
writeln('Nhap tung phan tu'); for i:=1 to n do begin 
write('A[',I,']=');readln(a[i]);end;writeln;
writeln('        ---PHAN TU NGUYEN DUONG---');
writeln('Cac phan tu la so nguyen duong:');s:=0;ol:=0;
for i:=1 to n do if (a[i]>0) then begin s:=s+1;write('A[',i,']     ');
writeln('     ',A[i]);ol:=ol+a[i];end;
writeln('Co ',S,' phan tu nguyen duong trong mang vua nhap');
writeln('Tong cac phan tu nguyen duong do la ',ol);
S:=0;for i:=1 to n do s:=s+a[i];
writeln('Trung binh cac phan tu trong mang: ',s/n:1:2);
s:=0;for i:=1 to n do if a[i] >0 then begin s:=s+a[i];u:=u+1;end;
writeln('Trung binh cac phan tu duong la: ',s/u:1:2);writeln;
writeln('        ---PHAN TU NGUYEN TO---');
writeln('Cac phan tu la so nguyen to:');ol:=0;s:=0;
for i:=1 to n do 
begin
for u:=1 to a[i] do if a[i] mod u = 0 then s:=s+1;
if s=2 then begin ol:=ol+1;write('A[',i,']=',a[i],'      ');
end;s:=0;end;writeln;
if ol>0 then writeln('Co ',ol,' phan tu la so nguyen to');
if ol=0 then writeln('Khong co so nguyen to trong mang');
writeln('         ---TIM VI TRI---');
writeln('Nhap phan tu can tim');read(k);l:=0;
for i:=1 to n do if A[i]=k then break;l:=i;
writeln('Vi tri dau tien cua phan tu can tim la vi tri thu ',l);
writeln('Cac phan tu bang phan tu can tim la:');
for i:=1 to n do if (a[i]=k) and (a[i]<>l) then writeln('A[',i,']=',A[i]);
s:=0;
writeln('             ---TIM CAC GIA TRI BANG VOI GIA TRI DA CHO');
writeln('Nhap gia tri muon tim cac gia tri bang voi gia tri cho truoc');read(b);
for j:=0 to n do if A[j] = b then begin
S:=S+1;
writeln(A[j],' -phan tu thu ',j);
end;if S=0 then writeln('Khong co phan tu nao bang phan tu da cho')
else
writeln('Tong cac gia tri bang ',b,' (khong ke phan tu da cho) la: ',S-1);
readln
end.




