program stvorec_2;
uses crt;
var f: integer;

procedure stvorec(r, s, d : byte);
var i, j : integer;

begin
  gotoxy(s,r); { tu sa prejavi zadavana hodnota parametra pre jednotlive stvorce procedurou }
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
  stvorec(5, 5, 16);
  textcolor (f + 1);
  stvorec(7, 7, 12);
  textcolor(f - 2);
  stvorec(9, 9, 8);
  textcolor(f + 2);
  stvorec(11, 11, 4);
  readln;
end.