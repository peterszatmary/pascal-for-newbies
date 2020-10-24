program deln;
uses crt;
var n, g : integer;
begin
clrscr;

writeln('The program reads the number entered by the user and finds out whether it is divisible by the number also entered by the user');
writeln;
writeln('Type number');
writeln;
readln(n);
writeln;
writeln('For which number do you want to test the divisibility of your number?');
writeln;
readln(g);

if n mod g = 0 then
	writeln(' Number ',n,' is divisible by ',g,'.')
else
	writeln(' Number ',n,' is divisible ',g,'.');

readln;
end.