program prazdny_trojuholnik;
uses crt;
var i, s, r, d :integer;

begin
  clrscr;
  writeln(' program nakresli prazdny trojuholnik so stranou aku zadate ');
  writeln(' program je kalibrovany na neparne hodnoty velkosti strany '&lt;/span&gt;);
  writeln;
  writeln;
  writeln(' zadaj pocet x v zakladni ');
  readln(d);
  if d mod 2 &lt;&gt; 0 { cize ak je d neparne } then
  begin
  writeln(' zadaj stlpec ');
  readln(s);
  writeln(' zadaj riadok ');
  readln(r);
  gotoxy(s,r);{ kurzor nastavi na moju zadanu hodnotu}

  for i := 1 to (d) do write('x');
  for i := 1 to ((d div 2) - 1) do
  begin
    s := s + 1;
    r := r - 1;
    gotoxy(s,r);
    write('x');
    gotoxy(s + d - 3, r);
    write('x');
    d := d - 2;
  end;

  gotoxy(s,r);
  r := r - 1;
  s := s + 1;
  gotoxy(s,r);
  write('x');
end { tu sa nema dat bodkociarka }

else writeln(' ERROR!!! Program je kalibrovany na neparne hodnoty velkosti strany');
readln;
end.