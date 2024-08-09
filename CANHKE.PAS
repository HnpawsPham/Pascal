uses crt;
const inp='cgv2.inp';out='cgv2.out';
var ch,cgv1,cgv2:real;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(ch,cgv1);
cgv2:=sqrt(sqr(ch)-sqr(cgv1));
writeln('Canh ke con lai la ',cgv2:2:2);
close(input);close(output);
end.