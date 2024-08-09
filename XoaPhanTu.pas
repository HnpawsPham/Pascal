uses crt;
var g:array[1..220]of string;
a,n,i:integer;
begin
clrscr;
writeln('Nhap bao nhieu phan tu?');read(n);
writeln('Nhap tung phan tu');
for i:=0 to n do  begin write('g[',i,']=');readln(g[i]);end;
writeln('Mang vua nhap la');
for i:=0 to n do writeln('g[',i,']=',g[i]);
writeln('Muon xoa phan tu thu may?');read(a);
for i:=a to n-1 do G[i]:=G[i+1];n:=n-1;
for i:=1 to n do writeln(G[i]);
readln
end.