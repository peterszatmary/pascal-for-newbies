program south_korea;
uses graph;
var x, y, d, m : integer;

procedure velky_horny_l;
begin
  moveto(x,y);
  x := x + 68; { 50 }
  y := y - 100;
  lineto(x,y);
  x := x - 20;
  y := y - 10;
  lineto(x,y);
  x := x - 68; { 50 }
  y := y + 100;
  lineto(x,y);
  x := x + 20;
  y := y + 10;
  lineto(x,y);
end;

procedure maly_dolny_p;
begin
  moveto(x,y);
  x := x + 28; { 20 }
  y := y - 40;
  lineto(x,y);
  x := x - 20;
  y := y - 10;
  lineto(x,y);
  x := x - 28; { 20 }
  y := y + 40;
  lineto(x,y);
  x := x + 20;
  y := y + 10;
  lineto(x,y);
end;

procedure velky_dolny_l;
begin
  moveto(x,y);
  x := x + 20;
  y := y - 10;
  lineto(x,y);
  x := x - 68; { 50 }
  y := y - 100;
  lineto(x,y);
  x := x - 20;
  y := y + 10;
  lineto(x,y);
  x := x + 68; { 50 }
  y := y + 100;
  lineto(x,y);
end;

procedure maly_dolny_l;
begin
  moveto(x,y);
  x := x + 20;
  y := y - 10;
  lineto(x,y);
  x := x - 28; { 20 }
  y := y - 40;
  lineto(x,y);
  x := x - 20;
  y := y + 10;
  lineto(x,y);
  x := x + 28; { 20 }
  y := y + 40;
  lineto(x,y);
end;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');

{------------ kruh ----------}

  circle(320, 240, 100);

  setcolor(blue);
  circle(320, 240, 99);
  setfillstyle(1, blue);
  floodfill(320, 240, blue);

  setcolor(red);
  ARC(320, 240, 355, 175, 99);
  ARC(368, 253, 0, 170, 170);
  ARC(272, 227, 175, 350, 50);

  setfillstyle(1, red);
  floodfill(300, 200, red);

{---------vlavo hore -----------}
  setcolor(white);

  x := 110;
  y := 115;
  velky_horny_l;

  x := 135;
  y := 167;
  velky_horny_l;

  x := 160;
  y := 179;
  velky_horny_l;

{------------vpravo dole-----------}

{----------prvy par-------}

  x := 510;
  y := 410;
  maly_dolny_p;

  x := 550;
  y := 345;
  maly_dolny_p;

{------------druhy par--------}

  x := 485;
  y := 398;
  maly_dolny_p;

  x := 525;
  y := 333;
  maly_dolny_p;

{--------------treti par-----------}

  x := 460;
  y := 386;
  maly_dolny_p;

  x := 500;
  y := 321;
  maly_dolny_p;

{--------------vlavo dole-----------}

  x := 190;
  y := 385;
  velky_dolny_l;

{---par----}

  x := 165;
  y := 398;
  maly_dolny_l;

  x := 125;
  y := 338;
  maly_dolny_l;

{--koniec paru--}

  x := 140;
  y := 410;
  velky_dolny_l;

{--------------vpravo hore-----------}

{---par----}
  x := 550;
  y := 155;
  maly_dolny_l;

  x := 510;
  y := 95;
  maly_dolny_l;

{---koniec par----}

  x := 525;
  y := 168;
  velky_dolny_l;

{---par----}
  x := 500;
  y := 180;
  maly_dolny_l;

  x := 460;
  y := 120;
  maly_dolny_l;

{---koniec par----}

  setfillstyle(1, white);
  floodfill(30, 90, white);
{ vyplni sa zvysok bielou, tym ziskam cierne pruzky a biele pozadie }

  readln;
  closegraph;
end.