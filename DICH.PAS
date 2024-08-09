uses crt;
var n:string[7];
begin
clrscr;
repeat
writeln('Nhap thu can dich, nhan e de thoat');
readln(n);
case n of
2 or 'hai':writeln('Monday');
3 or 'ba':writeln('Tuesday');
4 or 'tu':writeln('Wednesday');
5 or 'nam':writeln('Thursday');
6 or 'sau':writeln('Friday');
7 or 'bay':writeln('Saturday');
cn or 'chunhat':writeln('Sunday');
else begin writeln('Thu nay khong hop le, vui long nhap lai');read(n);end;
until n='e';
readln
end.