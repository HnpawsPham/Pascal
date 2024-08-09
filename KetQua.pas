uses crt;
var toan,van,anh,s,sbd:real;
begin
clrscr;
writeln('Nhap So bao danh');read(sbd);
writeln('Nhap diem');
write('Toan: ');readln(toan);
write('Van: ');readln(van);
write('Ngoai ngu: ');readln(anh);
writeln('---PHIEU DIEM---');
writeln('SBD: ',sbd:3:2);
writeln('Diem so: Toan     Van     Ngoai ngu');
writeln('         ',toan:3:2,'     ',van:3:2,'     ',anh:3:2,'     ');s:=toan+van+anh;
writeln('Tong so diem: ',s:3:2);
if s>=15 then writeln('Ket qua: Ban da trung tuyen') else writeln('Ket qua: Ban khong trung tuyen');
readln
end.
