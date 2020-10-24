program interval_ext;
uses crt;
var a, b, i, zvysok, delitel :longint;
begin
  clrscr;

  writeln(' The program will list all numbers with properties that you enter  ');
  writeln(' from the interval you also enter ');
  writeln;
  writeln;
  writeln(' Properties you enter: ');
  writeln;
  writeln('   - divisor of all interval numbers  ');
  writeln('   - the remainder after dividing all the interval numbers  ');
  writeln;
  writeln;
  writeln(' Enter the start of the interval ');
  writeln;
  readln(a);
  writeln;
  writeln(' Enter the end of the interval ');
  writeln;
  readln(b);
  writeln;
  writeln(' Enter a divisor for numbers from your interval ');
  writeln;
  readln(delitel);
  writeln;

  writeln(' Enter what the remainder should be after dividing by your number ', delitel);
  writeln;
  readln(zvysok);
  writeln;

  for i := a to b do
    if i mod delitel = zvysok then write (i,' , ');

  readln;
end.