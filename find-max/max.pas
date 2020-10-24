program maximum;
uses crt;
var a, b, c : integer;

begin
clrscr;
writeln;
writeln(' Enter 3 arbitrary different numbers ');
writeln;
readln (a, b, c);

if (a &gt; b) and (a &gt; c) then writeln (' Maximum is  ', a);
if (b &gt; a) and (b &gt; c) then writeln (' Maximum is  ', b);
if (c &gt; a) and (c &gt; b) then writeln (' Maximum is ', c);
readln;
end.