program sand_glass;
uses crt;
var s, r, d, i, j, m, f : byte;

begin
  clrscr;
  writeln(' program nakresli z krizikov presypacie hodiny ');
  writeln(' program je kalibrovany na neparne hodnoty velkosti strany ');
  writeln;
  writeln(' zadaj pocet krizikov zakladne ');
  readln(d);
  f := d;

  if f mod 2 &lt;&gt; 0 { cize ak je d neparne } then
  begin
  writeln(' zadaj riadok ');
  readln(r);
  writeln(' zadaj stlpec ');
  readln(s);
  gotoxy(s,r);
  for j := 1 to d do write ('x'); { nakresli zakladnu s d krizikmi }
  for i := 1 to (d div 2) do begin
    r := r + 1;
    s := s + 1;
    gotoxy(s,r);
    for m := 1 to (d - 2) do write ('x');
    d := d - 2; { bez tohto zapisu by kreslilo stale (d-2) krizikov do (d div 2) riadkov }
  end;
  gotoxy(s,r);
  r := r + (f div 2); { tu uz nemozem pouzit d pretoze ma hodnotu 1 alebo 2 }
  s := s - (f div 2);
  gotoxy(s,r);

  for j := 1 to f do write ('x'); { nakresli zakladnu s d krizikmi }
  for i := 1 to (f div 2) do begin
    r := r - 1;
    s := s + 1;
    gotoxy(s,r);
    for m := 1 to (f - 2) do write('x');
    f := f - 2; { bez tohto zapisu by kreslilo stale (d-2) krizikov do (d div 2) riadkov }
  end;
end

else writeln( ' ERROR!!! Program je kalibrovany na neparne hodnoty velkosti strany ' );

readln;
end.