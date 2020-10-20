program maximum;
uses crt;
var a, b, c : integer;

begin
clrscr;
writeln;
writeln(' Zadaj 3 lubovolne rozne cisla ');
writeln;
readln (a, b, c);

if (a &gt; b) and (a &gt; c) then writeln (' Maximum je  ', a);
if (b &gt; a) and (b &gt; c) then writeln (' Maximum je  ', b);
if (c &gt; a) and (c &gt; b) then writeln (' Maximum je  ', c);
readln;
end.