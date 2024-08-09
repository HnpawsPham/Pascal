uses crt,dos;
var nhap,xuat:text;
i,t,thanhtien,tong,n,dongia,hang,cot:longint;
y,m,d,w,h,p,s,x:word;
st,goc,tam:string;
count,code,dem,soluong:integer;
ma,dong:array[1..50] of string;
gioihan:array[1..50] of longint;

procedure tachdong(var n:longint);
var r:longint;
begin
while not eof(nhap) do begin
inc(r);
readln(nhap,dong[r]);end;
n:=r;
end;

function tim(tam:string):boolean;
begin s:=upcase(s);
for i:=1 to n do if tam=ma[i] then tim:=true;
break;
end;

function dieukien(var count:integer;st:string):boolean;
begin  inc(count);
case count of
1..2:for i:=length(St) downto 1 do if st[i]<>' ' then dieukien:=true;
3:for i:=length(St) downto 1 do if (st[i] in ['A'..'Z']) and
(st[i+2] in ['A'..'Z']) then dieukien:=true;
4:for i:=length(St) downto 1 do if st[i]<>' ' then dieukien:=true;
end;
end;

procedure thaystr(v:longint;var dongia,hang,cot:longint;var st:string);
var vitri:integer;
begin
vitri:=0;  inc(t);
if dieukien(count,st) then begin
ma[t]:=st[i]+ma[t];
delete(st,pos(ma[t],st),1) end;
for i:=1 to length(St) do if st[i]=' ' then delete(st,pos(' ',st),1)
else break;
vitri:=gioihan[v]-length(ma[t]);
if hang=n then hang:=0;
if cot=5 then val(ma[t],dongia,code);
inc(hang);inc(Cot);
 gotoxy(vitri,hang);
 writeln(xuat,ma[t]);
end;

procedure phanchia(goc:string);
var v:integer;
begin  v:=1;
while not eoln do begin
for i:=1 to length(goc) do if( st[i]=' ') and (st[i+1]=' ') then begin
gioihan[v]:=i-1;
delete(st,1,gioihan[v]);break;end;
for i:=1 to n do thaystr(v,dongia,hang,cot,dong[i]);
inc(v);
end;
end;

function thanhttien(Var tong:longint;dongia,soluong:longint):longint;
begin
thanhtien:=soluong*dongia;
tong:=tong+thanhtien;
end;

begin
clrscr; tam:='';
assign(nhap,'HOADON.DAT');reset(nhap);
assign(xuat,'HOADON.OUT');rewrite(xuat);
writeln(xuat,'******************************************************************************************');
gotoxy(32,2);writeln(xuat,'HOA DON MUA HANG');
goc:='Ma mat hang        Ten mat hang             So luong     Don vi tinh   Don gia    Thanh tien';
writeln(xuat,goc);
tachdong(n);
phanchia(goc);
gotoxy(1,1);

repeat
write('Nhap ma mat hang: ');
readln(tam);
tim(tam);
while tim(tam)=false do begin
writeln('  --- Ma mat hang khong ton tai, moi ban nhap lai! ---');
write('Nhap ma mat hang: ');readln(tam);
tim(tam);end;
write('Nhap so luong: '); readln(soluong);
for i:=1 to n do thaystr(i,dongia,hang,cot,dong[i]);
thanhttien(tong,dongia,soluong);
until soluong=0;
writeln('Cam on quy khach! Hoa don da duoc in, hen gap lai!');

{khong nhap duoc}

writeln(xuat,'                  TONG THANH TIEN = ',tong);
getdate(y,m,d,w);
gettime(h,p,s,x);
writeln(xuat,'Hoa don duoc in luc ',h,' gio ',p,' phut ngay ',d,'/',m,'/',y);
close(nhap);close(xuat);
readln
end.