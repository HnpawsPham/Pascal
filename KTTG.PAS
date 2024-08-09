uses crt;
const inp='kttg.inp';out='kttg.out';
var a,b,c:real;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(a,b,c);
if (a+b>c) and (b+c>a) and (a+c>b) then writeln('Day la hinh tam giac') else writeln('Day khong phai hinh tam giac');
close(input);close(output);
end.