program hladaj20;
uses crt;
var a, b, c, d, e, f: integer;

begin
  clrscr;
  writeln ('Program nacita 6 lubovolnych cisel a zisti ci je medzi nimi cislo 20.');
  writeln;
  writeln ('Zadaj lubovolnych 6 cisel');
  writeln;
  readln (a, b, c, d, e, f);
  writeln;

  if (a = 20) or (b = 20) or (c = 20) or (d = 20) or (e = 20) or (f = 20) then
    writeln (' V tvojich cislach sa cislo 20 nachadza !')
  else
    writeln (' V tvojich cislach sa cislo 20 nenachadza! ');
  readln;
end.