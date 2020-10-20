program searchnum;
uses crt;
var a, b, c, d, e, f, g: integer;

begin
  clrscr;
  writeln ('Program nacita 6 lubovolnych cisel a zisti ci je medzi nimi cislo, ktore zada pouzivatel');
  writeln;
  writeln ('Zadaj lubovolnych 6 cisel');
  writeln;
  readln (a, b, c, d, e, f);
  writeln;
  writeln('Zadaj cislo, ktore chces hladat');
  writeln;
  readln(g);
  writeln;

  if (a = g) or (b = g) or (c = g) or (d = g) or (e = g) or (f = g) then
    writeln (' V tvojich cislach sa nachadza cislo ',g, ' !')
  else
    writeln (' V tvojich cislach sa nenachadza cislo ',g, ' !')
    readln;
end.