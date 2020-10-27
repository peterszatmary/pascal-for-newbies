program search_num;
uses crt;
var a, b, c, d, e, f, g: integer;

begin
  clrscr;
  writeln (' The program reads 6 arbitrary numbers and finds out if there is a number between them, which is entered by the user ');
  writeln;
  writeln (' Enter any 6 numbers ');
  writeln;
  readln (a, b, c, d, e, f);
  writeln;
  writeln(' Enter the number you want to search ');
  writeln;
  readln(g);
  writeln;

  if (a = g) or (b = g) or (c = g) or (d = g) or (e = g) or (f = g) then
    writeln (' There is a number in your numbers ',g, ' !')
  else
    writeln (' There is not a number in your numbers ',g, ' !')
    readln;
end.