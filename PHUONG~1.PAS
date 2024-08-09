uses crt;
var a,b,x:real;
begin
clrscr;
writeln('Nhap a va b di');read(a,b);
writeln(a:2:1,'x+',b:2:1,'=0');
writeln('<=>',a:2:1,'x=',(b*-1):1:2);
writeln('<=> x=',(b*-1):2:1,':',a:1:2);
writeln('<=> x=',(b*-1/a):1:2);
x:=(b*-1)/a;
if (x=0) and (b=0) then writeln('Vay phuong trinh da cho co vo so nghiem')
else if (x=0) and(b<>0) then writeln('Vay phuong trinh da cho vo nghiem')
else writeln('Vay phuong trinh da cho co nghiem x=',x:1:2);delay(9000);
readln
end.