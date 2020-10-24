program interval;
uses crt;
var a, b, i : longint;
begin
  clrscr;
  writeln(' The program prints all numbers from the user-specified interval ');
  writeln;
  writeln(' Enter the start of the interval ');
  writeln;
  readln(a);
  writeln;
  writeln(' Enter the end of the interval ');
  writeln;
  readln(b);
  writeln;

  for i := a to b do write (i,' , ');

  readln;
end.