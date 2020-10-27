program empty_rhombus;
uses crt;
var i, s, r, d : integer;

begin
  clrscr;
  writeln(' the program draw an empty rhombus with the side you enter ');
  writeln;
  writeln;
  writeln(' number of the basics x ');
  readln(d);
  writeln(' type column ');
  readln(s);
  writeln(' ztype row ');
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