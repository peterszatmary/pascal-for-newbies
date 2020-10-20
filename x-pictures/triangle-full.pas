program pyramida;
uses crt;
var s, r, d, i, j, m : byte;

begin
  clrscr;
  writeln(' program nakresli z krizikov pyramidku ');
  writeln;
  writeln(' zadaj pocet krizikov zakladne ');
  readln(d);
  writeln(' zadaj riadok ');
  readln(r);
  writeln(' zadaj stlpec ');
  readln(s);
  gotoxy(s,r);

  for j := 1 to d do write ('x'); { nakresli zakladnu s d krizikmi }
  repeat
    r := r - 1;
    s := s + 1;
    gotoxy(s,r);
    for m := 1 to (d - 2) do write ('x');
    d := d - 2 ; { bez tohto zapisu by mi kreslilo stale (d-2) krizikov }
    do ( d div 2 ) riadkov }
  until ( d = 1 ) or ( d = 2 ) ; { d sa pri konci buderovnat pri parnych d 2 pri neparnych 1 }
  readln ;
end.