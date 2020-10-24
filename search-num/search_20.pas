program search_20;
uses crt;
var a, b, c, d, e, f: integer;

begin
  clrscr;
  writeln (' The program reads 6 arbitrary numbers and finds out if there is a number 20 between them. ');
  writeln;
  writeln (' Enter any 6 numbers ');
  writeln;
  readln (a, b, c, d, e, f);
  writeln;

  if (a = 20) or (b = 20) or (c = 20) or (d = 20) or (e = 20) or (f = 20) then
    writeln (' The number 20 is in your numbers!')
  else
    writeln (' There is no number 20 in your numbers! ');
  readln;
end.