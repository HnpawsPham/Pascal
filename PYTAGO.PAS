uses crt;
var a,b,c: real;
begin
clrscr;
writeln('Nhap ba canh a va b va c di');read(a,b,c);
if (a*a+b*b=c*c) or (a*a+c*c=b*b) or (b*b+c*c=a*a) then writeln('Tam giac nay la tam giac vuong')
else writeln('Day khong phai tam giac vuong'); delay(9000);
readln
end.