program kosostvorec;
uses crt;
var s, r, d, i, j, m : byte;

begin
clrscr;
writeln(' program nakresli z krizikov plny kosostvorec ');
writeln;
writeln(' zadaj pocet krizikov zakladne ');
readln(d);
writeln(' zadaj riadok ');
readln(r);
writeln(' zadaj stlpec ');
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