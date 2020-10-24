program usa_in_one_layer;
uses graph;
var d, m, x, y, i, j: integer;

procedure star;

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
  lineto(x,y);        {mirroring from now}
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
  lineto(x,y);
  x := x + 1;
  y := y - 5;
  lineto(x,y);
  setfillstyle(solidfill, white);
  floodfill(x, y + 3, yellow);
end;

begin
  d := detect;
  initgraph(d, m, ' c:\tp\bgi ');

  setcolor(yellow);
  rectangle(0, 0, 638, 478);    { outline flag yellow }
  rectangle(0, 0, 258, 258);
  setfillstyle(solidfill, blue);
  floodfill(10, 10, yellow);

  line(0, 441, 638, 441);
  line(0, 367, 638, 367);
  line(0, 293, 638, 293);
  line(258, 221, 638, 221);
  line(258, 147, 638, 147);
  line(258, 73, 638, 73);
  setfillstyle(solidfill, red);   { all of them red }
  floodfill(10, 442, yellow);  { last red too }
  floodfill(10, 369, yellow);
  floodfill(10, 295, yellow);
  floodfill(259, 222, yellow); { the first red stripe from the bottom next to the blue }
  floodfill(259, 148, yellow);
  floodfill(259, 74, yellow);
  floodfill(259, 35, yellow);

  line(0, 404, 638, 404);
  line(0, 330, 638, 330);
  line(0, 258, 638, 258);
  line(258, 184, 638, 184);
  line(258, 110, 638, 110);
  line(258, 36, 638, 36);
  setfillstyle(solidfill, white);    { all white }
  floodfill(10, 406, yellow);     { penultimate white }
  floodfill(10, 331, yellow);
  floodfill(10, 259, yellow);
  floodfill(259, 185, yellow);
  floodfill(259, 111, yellow);
  floodfill(259, 37, yellow);

  for j := 0 to 4 do begin
    x := -28;
    for i := 1 to 6 do begin
      x := x + 44;
      y := 10*j + 10*j + 10*j + 10*j + 10*j + 20;
      star;
    end;
  end;

  for j := 0 to 3 do begin
    x := -6;
    for i := 1 to 5 do begin
      x := x + 44;
      y := 10*j + 10*j + 10*j + 10*j + 10*j + 45;
      star;
    end;
  end;

  readln;
  closegraph;
end.