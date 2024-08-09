uses crt;
var x,y,UCLN,BCNN,t:integer;
begin
writeln('Nhap hai so x va y di')
readln(x,y);
BCNN:=x*y;
t:= y mod x;
While t <> 0 do
      Begin
        t:= x MOD y;
        x:= y;
        y:= t;
      End;
ucln:=x;
BCNN:=BCNN div UCLN;
write(UCLN,' ',BCNN);
end.