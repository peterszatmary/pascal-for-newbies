program right_triangle;
uses crt;
var s, r, d, i, j, m : byte;

begin
  clrscr;
  writeln(' program draw a triangle from x ');
  writeln;
  writeln(' type number of x ');
  readln(d);
  writeln(' type row ');
  readln(r);
  writeln(' type column ');
  readln(s);
  gotoxy(s,r);
  for j := 1 to d do write('x'); { draw a base with d number of x }

  repeat
    r := r - 1;
    s := s + 1;
    gotoxy(s,r);
    for m := 1 to (d - 1) do write ('x');
    d := d - 1;
  until (d = 1);
  readln ;
end.