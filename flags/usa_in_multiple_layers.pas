program usa_in_multiple_layers;
uses graph;
var d, m, x, y, i, j: integer;

procedure hviezda;

begin
  moveto(x,y);
  x := x + 1;
  y := y + 5;
  lineto(x,y);
  x := x + 5;
  lineto(x,y);
  x := x - 5;
  y := y + 3;
  lineto(x,y);
  x := x + 3;
  y := y + 5;
  lineto(x,y);
  x := x - 4;
  y := y - 4;
  lineto(x,y);        {odteraz zrkadlovite}
  x := x - 4;
  y := y + 4;
  lineto(x,y);
  x := x + 3;
  y := y - 5;
  lineto(x,y);
  x := x - 5;
  y := y - 3;
  lineto(x,y);
  x := x + 4;
  lineto (x,y);
  x := x + 1;
  y := y - 5;
  lineto(x,y);
  setfillstyle(solidfill, white);
  floodfill(x, y + 3, yellow);
end;

procedure cervenypas(y1, y2 : word);
var x, y : integer;

begin
  moveto(x,y);
  setcolor(red);
  rectangle(0, y1, 638, y2);
  setfillstyle(solidfill, red);
  floodfill(10, y1 + 10, red);
end;

begin
  d := detect;
  initgraph(d, m, ' c:\tp\bgi ');

  rectangle(0, 0, 638, 478);
  setfillstyle(solidfill, white);
  floodfill(320, 240, white);

  cervenypas(0, 37);
  cervenypas(74, 111);
  cervenypas(148, 185);
  cervenypas(222, 258);
  cervenypas(296, 333);
  cervenypas(370, 407);
  cervenypas(444, 480);

  setcolor(blue); { obrys vlajky zltou }
  rectangle(0, 0, 258, 258);
  setfillstyle(solidfill, blue);
  floodfill(10, 10, blue);

  setcolor(white); { biela farba pera koli obrysu hviezd }
  for j := 0 to 4 do begin
    x := -28;
    for i := 1 to 6 do begin
      x := x + 44;
      y := 10*j + 10*j + 10*j + 10*j + 10*j + 20;
      hviezda;
    end;
  end;

  for j := 0 to 3 do begin
    x := -6;
    for i := 1 to 5 do begin
      x := x + 44;
      y := 10*j + 10*j + 10*j + 10*j + 10*j + 45;
      hviezda;
    end;
  end;

  readln;
  closegraph;
end.