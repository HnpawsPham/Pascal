uses crt;
const inp='scp.inp';out='scp.out';
var n:integer;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(n);
if sqr(sqrt(n))=n then writeln('Day la so chinh phuong') 
else writeln('Day khong phai so chinh phuong');
close(input);close(output);
end.