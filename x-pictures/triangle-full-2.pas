program pyramida;
uses crt ;
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
  for i := 1 to (d div 2) do begin
    r := r - 1 ;
    s := s + 1 ;
    gotoxy (s,r) ;
    for m := 1 to ( d - 2 ) do write ( 'x' ) ;
    d := d - 2 ; { bez tohto zÃ¡pisu by mi kreslilo stale ( d-2 ) krizikov}
    do ( d div 2 ) riadkov }
  end ;
end.