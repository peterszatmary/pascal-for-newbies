program full_rhombus;
uses crt;
var s, r, d, i, j, m : byte;

begin
clrscr;
writeln(' program drawn from x full rhombus ');
writeln;
writeln(' enter the number of basic crises ');
readln(d);
writeln(' type row ');
readln(r);
writeln(' type column ');
readln(s);
gotoxy(s,r);
for i := 1 to d do begin
r := r - 1;
s := s + 1;
gotoxy (s,r);
for m := 1 to d do write('x');
end;
readln;
end.