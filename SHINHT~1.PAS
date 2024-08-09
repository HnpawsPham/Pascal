uses crt;
const inp='dtht.inp';out='dtht.out';
var c,dt,duongkinh:real;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(c);
duongkinh:=sqrt(sqr(c)+sqr(c));
dt:=SQR(duongkinh)/4*3.14;
writeln('Dien tich hinh tron la ',dt:2:2);
close(input);close(output);
end.