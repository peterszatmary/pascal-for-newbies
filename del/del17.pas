program del17;
uses crt;
var n : integer;
begin
clrscr;

writeln(' The program reads the number entered by the user and finds out whether it is divisible by the number 17 ');
writeln;
writeln('Type number');
writeln;
readln(n);
writeln;

if n mod 17 = 0 then
	writeln(' Number ',n,' is divisible by 17. ')
else
	writeln(' Number ',n,' it is not is divisible by 17. ');

readln;
end.