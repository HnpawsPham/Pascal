uses crt;
var a,b,c,s,p,h:real;
donvi:string;
begin
clrscr;
writeln('Nhap do dai canh a, b, c');read(a,b,c);
writeln('Nhap don vi');
readln(donvi);delay(1000);
if (a+b>c) and (b+c>a) and (a+c>b) then begin writeln(' Ba canh nay la do dai cua mot tam giac');
p:=a+b+c;h:=p/2;s:=sqrt(p*(p-a)*(p-b)*(p-c));writeln('Chu vi: ',round(p),donvi,' Dien tich: ',round(s),donvi,'2');end
else writeln('Day khong phai la ba canh cua mot tam giac');
readln;
end.
