program pravouhly1;
uses crt;
var s, r, d, i, j, m : byte;

begin
  clrscr;
  writeln(' program nakresli z krizikov trojuholnik ');
  writeln;
  writeln(' zadaj pocet krizikov zakladne ');
  readln(d);
  writeln(' zadaj riadok ');
  readln(r);
  writeln(' zadaj stlpec ');
  readln(s);
  gotoxy(s,r);
  for j := 1 to d do write('x'); { nakresli zakladnu s d krizikmi }

  repeat
    r := r - 1;
    s := s + 1;
    gotoxy(s,r);
    for m := 1 to (d - 1) do write ('x');
    d := d - 1;
  until (d = 1);
  readln ;
end.