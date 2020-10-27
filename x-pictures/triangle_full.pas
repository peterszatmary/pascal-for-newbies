program triangle_full;
uses crt;
var s, r, d, i, j, m : byte;

begin
  clrscr;
  writeln(' the program drew a pyramid from the x ');
  writeln;
  writeln(' enter the basic size ');
  readln(d);
  writeln(' enter row ');
  readln(r);
  writeln(' enter column ');
  readln(s);
  gotoxy(s,r);

  for j := 1 to d do write ('x'); { draw basic }
  repeat
    r := r - 1;
    s := s + 1;
    gotoxy(s,r);
    for m := 1 to (d - 2) do write ('x');
    d := d - 2 ; { without this record, it would still draw (d-2) x }
    do ( d div 2 )
  until ( d = 1 ) or ( d = 2 ) ; { d at the end be excited at steam d 2 at odd 1 }
  readln ;
end.