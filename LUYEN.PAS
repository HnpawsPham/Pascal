const inp='luyen.inp';out='luyen.out';
var st:string;i:longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(St);
for i:=1 to length(st) do
 case st[i] of
'a'..'y': st[i]:=chr(ord(st[i])+1);
'B'..'Z': st[i]:=chr(ord(st[i])-1);
'z':st[i]:= 'a';
'A':st[i]:= 'z';
end;write(st);
close(input);close(output);
end.

