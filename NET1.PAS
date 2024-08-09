uses crt;
const inp='net1.inp';out='net1.out';
var sp,st,tam:integer;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(sp);
if sp<=60 then st:=sp*80;
if sp<=120 then begin tam:=sp-60; st:=((sp-tam)*50)+(60*80);end;
if sp>=121 then begin tam:=sp-120;st:=(tam*30)+(60*80)+(60*50);end;
writeln('So tien phai tra ',st);
close(input);close(output);
end.