program empty_triangel;
uses crt;
var i, s, r, d :integer;

begin
  clrscr;
  writeln(' rogram draw an empty triangle with size of which you enter ');
  writeln(' the program is calibrated to odd  size values ');
  writeln;
  writeln;
  writeln(' enter the number of x in the base ');
  readln(d);
  if d mod 2 <> 0 { d is odd } then
  begin
  writeln(' type column ');
  readln(s);
  writeln(' type row ');
  readln(r);
  gotoxy(s,r); { sets the cursor to my specified value }

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
end

else writeln(' ERROR, The program is calibrated to odd page size values ');
readln;
end.