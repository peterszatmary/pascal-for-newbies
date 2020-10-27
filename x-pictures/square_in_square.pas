program square_in_square;
uses crt;
var f: integer;

procedure my_square(r, s, d : byte);
var i, j : integer;

begin
  gotoxy(s,r); { here the entered value of the parameter for individual square is reflected by the procedure }
  for i := 1 to d do write('x');
  r := r + 1;
  gotoxy(s,r);
  for j := 1 to (d - 2) do begin
    write('x');
    gotoxy(s + d - 1, r);
    write('x');
    r := r + 1;
    gotoxy(s,r);
  end;

  for i := 1 to d do write('x');
end;


begin
  clrscr;
  randomize;
  f := 2 + random(12);
  textcolor(f);
  my_square(5, 5, 16);
  textcolor (f + 1);
  my_square(7, 7, 12);
  textcolor(f - 2);
  my_square(9, 9, 8);
  textcolor(f + 2);
  my_square(11, 11, 4);
  readln;
end.