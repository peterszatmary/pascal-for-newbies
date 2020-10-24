program burundi;
uses graph;
var d, m, x, y : integer;

procedure star;
begin
  setcolor(green);
  moveto(x, y);
  x := x + 10;
  y := y + 19;
  lineto(x, y);
  x := x + 20;
  lineto(x, y);
  x := x - 10;
  y := y + 18;
  lineto(x, y);
  x := x + 10;
  y := y + 19;
  lineto(x, y);
  x := x - 20;
  lineto(x, y);
  x := x - 10;
  y := y + 14;
  lineto(x, y);
  x := x - 10;
  y := y - 14;
  lineto(x, y);
  x := x - 20;
  lineto(x, y);
  x := x + 10;
  y := y - 19;
  lineto(x, y);
  x := x - 10;
  y := y - 18;
  lineto(x, y);
  x := x + 20;
  lineto(x, y);
  x := x + 10;
  y := y - 19;
  lineto(x, y);
  setfillstyle(solidfill, red);
  floodfill(x, y + 2, green);
end;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');

  setcolor(blue);
  rectangle(0, 0, 638, 479);
  ARC(320, 240, 48, 132, 100); { upper part of circle }
  ARC(320, 240, 153, 207, 100); { left part of circle }
  ARC(320, 240, 228, 312, 100); { lower part of circle }
  ARC(320, 240, 334, 387, 100); { right cast kruhu }
  line(30, 0, 254, 166);
  line(0, 30, 230, 195);
  line(609, 0, 386, 166);
  line(640, 30, 409, 195);
  line(640, 449, 410, 285);
  line(609, 480, 386, 314);
  line(30, 480, 254, 314);
  line(0, 449, 230, 285);

  setfillstyle(solidfill, red);
  floodfill(320, 10, blue);
  floodfill(320, 460, blue);

  setfillstyle(solidfill, green);
  floodfill(10, 240, blue);
  floodfill(630, 240, blue);

  setfillstyle(solidfill, white);
  floodfill(10, 10, blue);

  x := 320;
  y := 153;
  star;

  x := 280;
  y := 238;
  star;

  x := 360;
  y := 238;
  star;

  readln;
  closegraph;
end.