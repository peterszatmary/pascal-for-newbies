program circle;
uses crt;
var i, s, r, d : integer;

begin
  clrscr;
  writeln(' program nakresli obrazec pripominajuci kruznicu ');
  writeln;
  writeln;
  writeln(' zadaj velkost ');
  readln(d);
  writeln(' zadaj stlpec ');
  readln(s);
  writeln(' zadaj riadok ');
  readln(r);
  gotoxy(s,r);

  for i := 1 to d do write('x');

  r := r - 1;
  s := s - 1;
  gotoxy(s,r);
  write('x');
  gotoxy(s + d + 1, r);
  write('x');

  s := s - 1;
  r := r - 1;
  gotoxy(s,r);

  for i := 1 to d do begin
    write('x');
    gotoxy(s + d + 3, r);
    write('x');
    r := r - 1;
    gotoxy(s,r);
  end;

  s := s + 1;
  gotoxy(s,r);
  write('x');
  gotoxy(s + d + 1, r);
  write('x');
  r := r - 1;
  s := s + 1;
  gotoxy(s,r);

  for i := 1 to d do write('x');

  readln;
end.