program pyramida;
uses crt ;
var s, r, d, i, j, m : byte;

begin
  clrscr;
  writeln(' app draw pyramid from x ');
  writeln;
  writeln(' enter the number of basic ');
  readln(d);
  writeln(' row to start draw');
  readln(r);
  writeln(' column to start draw');
  readln(s);
  gotoxy(s,r);
  for j := 1 to d do write ('x'); { draw basic with d x-marks }
  for i := 1 to (d div 2) do begin
    r := r - 1 ;
    s := s + 1 ;
    gotoxy (s,r) ;
    for m := 1 to ( d - 2 ) do write ( 'x' ) ;
    d := d - 2 ; { without this it will be still drawing (d-2) x-mark }
    do ( d div 2 )
  end ;
end.