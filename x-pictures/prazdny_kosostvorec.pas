program prazdny_kosostvorec;
uses crt;
var i, s, r, d : integer;

begin
  clrscr;
  writeln(' program nakresli prazdny kosostvorec so stranou aku zadate ');
  writeln;
  writeln;
  writeln(' zadaj pocet x v zakladni ');
  readln(d);
  writeln(' zadaj stlpec ');
  readln(s);
  writeln(' zadaj riadok ');
  readln(r);
  gotoxy(s,r);
  for i := 1 to d do write ('x');

  for i := 1 to (d - 2) do begin
    r := r - 1;
    s := s + 1;
    gotoxy(s,r);
    write('x');
    gotoxy(s + d - 1, r);
    write('x');
  end;

  gotoxy(s,r);
  for i := 1 to d do write('x');

  readln;
end.