program radian_values_of_sinus_from_interval;
uses crt;
var a, b, i : real;
begin
  clrscr;
  writeln(' The program prints the sine values in the interval specified in the radians. ');
  writeln;
  writeln(' enter the initial sine value ');
  readln(i);
  writeln(' enter the final sine value ') ;
  readln(b) ;
  writeln;
  while (i <= b) do
begin
writeln((sin(i)) : 2 : 4);
  i := i + 0.0872;
end;
readln;
end. { conversion from radians to sine value }