program right_angled_triangle;
uses crt;
var s, r, d, i, j, m : byte;

begin
  clrscr;
  writeln(' program draw a rectangle from x ');
  writeln;
  writeln(' enter the number of basic x ');
  readln(d);
  writeln(' type row ');
  readln(r);
  writeln(' type column ');
  readln(s);
  gotoxy(s,r);

  for j := 1 to d do write ('x'); { draw basic }

  repeat
    r := r - 1;
    gotoxy(s,r);
    for m := 1 to (d - 1) do write ('x');
    d := d - 1;
  until (d = 1);

  readln;
end.