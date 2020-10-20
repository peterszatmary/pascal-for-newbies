program deln;
uses crt;
var n, g : integer;
begin
clrscr;

writeln('Program nacita uzivatelom zadane cislo a zisti ci je delitelne cislom takisto zadanym pouzivatelom');
writeln;
writeln('Zadaj lubovolne cislo');
writeln;
readln(n);
writeln;
writeln('Pre ake cislo chces otestovat delitelnost tvojho cisla?');
writeln;
readln(g);

if n mod g = 0 then
	writeln(' Cislo ',n,' je delitelne cislom ',g,'.')
else
	writeln(' Cislo ',n,' nie je delitelne cislom ',g,'.');

readln;
end.