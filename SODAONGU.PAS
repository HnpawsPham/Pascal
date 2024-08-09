uses crt;
var x,i:longint;t,e:String;code:integer;
begin
clrscr;
readln(x); e:='';t:='';
str(X,t);for i:=1 to length(t) do e:=t[i]+e;
val(e,x,code);
writeln(x,' mod 19 = ',x mod 19);
readln
end.