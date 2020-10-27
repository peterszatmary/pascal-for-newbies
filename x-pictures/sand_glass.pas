program sand_glass;
uses crt;
var s, r, d, i, j, m, f : byte;

begin
  clrscr;
  writeln(' program draw sand glass by using x ');
  writeln(' the program is calibrated to odd page size values ');
  writeln;
  writeln(' enter the number of basic x ');
  readln(d);
  f := d;

  if f mod 2 <> 0 { odd d } then
  begin
  writeln(' type row ');
  readln(r);
  writeln(' type column ');
  readln(s);
  gotoxy(s,r);
  for j := 1 to d do write ('x'); { draw a base with d x }
  for i := 1 to (d div 2) do begin
    r := r + 1;
    s := s + 1;
    gotoxy(s,r);
    for m := 1 to (d - 2) do write ('x');
    d := d - 2; { without this notation would still draw (d-2) x into (d div 2) lines }
  end;
  gotoxy(s,r);
  r := r + (f div 2); { here I can no longer use d because it has a value of 1 or 2 }
  s := s - (f div 2);
  gotoxy(s,r);

  for j := 1 to f do write ('x'); { draw base with d x }
  for i := 1 to (f div 2) do begin
    r := r - 1;
    s := s + 1;
    gotoxy(s,r);
    for m := 1 to (f - 2) do write('x');
    f := f - 2; { without this notation would still draw (d-2) x into (d div 2) lines }
  end;
end

else writeln( ' ERROR!!! The program is calibrated to odd page size values ' );

readln;
end.