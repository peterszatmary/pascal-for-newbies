program objempovrch;
uses crt;
var vyber, a, b, c, objem, povrch, r, s, v : real;
const PI = 22/7; { presnejsie ako 3.14 }
begin
  clrscr;
  writeln(' Program vypocita objem a povrch nasledujucich telies: ');
  writeln(' kocka, kvader, gula, rotacny kuzel, rotacny valec. ') ;
  writeln(' 1. KOCKA ');
  writeln(' 2. KVADER ');
  writeln(' 3. GULA ');
  writeln(' 4. ROTACNY KUZEL ');
  writeln(' 5. ROTACNY VALEC ');
  writeln;
  writeln;
  writeln(' Vyber si teleso prostrednictvom cisla, ktore ho reprezentuje:');
  writeln;
  readln(vyber);

  if vyber = 1 then
  begin
    writeln;
    writeln(' Vybral si si KOCKU: ');
    writeln;
    writeln(' Zadaj stranu kocky ');
    writeln;
    readln(a);
    objem := a * a * a;
    povrch := 6 * a * a ;
    writeln(' Objem kocky je  : ',objem : 10 : 8,' jednotiek kubickych.');
    writeln(' Povrch kocky je : ', povrch : 10 : 8 ,' jednotiek stvorcovych.');
  end

  else if vyber = 2 then
  begin
    writeln;
    writeln(' Vybral si si KVADER: ');
    writeln;
    writeln;
    writeln(' Zadaj stranu a ');
    writeln;
    readln(a);
    writeln;
    writeln(' Zadaj stranu b ');
    writeln;
    readln(b);
    writeln;
    writeln(' Zadaj stranu c ');
    writeln;
    readln(c);
    objem := a * b * c;
    povrch := (2 * ( a * b + a * c + b * c ));
    writeln(' Objem kvadra je  : ', objem : 10 : 8,' jednotiek kubickych.');
    writeln(' Povrch kvadra je : ', povrch : 10 : 8,' jednotiek stvorcovych. ');
  end

  else if vyber = 3 then
  begin
    writeln;
    writeln(' Vybral si si GULU: ');
    writeln;
    writeln;
    writeln(' Zadaj polomer r: ' );
    writeln;
    readln(r);
    writeln;
    objem := 4/3 * PI * r * r * r;
    povrch := 4 * PI * r * r;
    writeln(' Objem gule je  : ', objem : 10 : 8 ,' jednotiek kubickych.');
    writeln(' Povrch gule je : ', povrch : 10 : 8,'jednotiek stvorcovych.');
  end


  else if vyber = 4 then
  begin
    writeln;
    writeln(' Vybral si si ROTACNY KUZEL: ');
    writeln;
    writeln;
    writeln(' Zadaj polomer podstavy r: ');
    writeln;
    readln(r);
    writeln;
    writeln(' Zadaj velkost steny s: ');
    writeln;
    readln(s);
    writeln;
    writeln(' Zadaj vysku v: ');
    writeln;
    readln(v);
    writeln;
    objem := 1/3 * ( PI * r * r * v );
    povrch := PI * r * r + PI * r * v;
    writeln(' Objem rotacneho kuzela je  : ', objem : 10 : 8 ,' jednotiek kubickych.');
    writeln(' Povrch rotacneho kuzela : ', povrch : 10 : 8 ,' jednotiek stvorcovych.');
  end

  else if vyber = 5 then
  begin
    writeln;
    writeln(' Vybral si si ROTACNY VALEC: ');
    writeln;
    writeln;
    writeln(' Zadaj polomer podstavy r: ');
    writeln;
    readln(r);
    writeln;
    writeln(' Zadaj vysku v: ');
    writeln;
    readln(v);
    writeln;
    objem := PI * r * r * v;
    povrch := (2 * PI * r * r + 2 * PI * r * v );
    writeln(' Objem rotacneho valca je  : ', objem : 10 : 8 ,' jednotiek kubickych.') ;
    writeln(' Povrch rotacneho valca : ', povrch : 10 : 8,' jednotiek stvorcovych.') ;
  end

  else
    writeln(' Zadal si cislo mimo intervalu (1 - 5).');
  readln;
end.