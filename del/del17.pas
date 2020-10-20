program del17;
uses crt;
var n : integer;
begin
clrscr;

writeln('Program nacita uzivatelom zadane cislo a zisti ci je delitelne cislom 17 ');
writeln;
writeln('Zadaj lubovolne cislo');
writeln;
readln(n);
writeln;

if n mod 17 = 0 then
	writeln(' Cislo ',n,' je delitelne cislom 17. ')
else
	writeln(' Cislo ',n,' nie je delitelne cislom 17. ');

readln;
end.