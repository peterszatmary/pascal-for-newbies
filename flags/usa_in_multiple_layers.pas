program usa_in_multiple_layers;
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
  lineto(x,y);        {mirrroring from now}
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

procedure red_line(y1, y2 : word);
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

  red_line(0, 37);
  red_line(74, 111);
  red_line(148, 185);
  red_line(222, 258);
  red_line(296, 333);
  red_line(370, 407);
  red_line(444, 480);

  setcolor(blue); { outline flag yellow }
  rectangle(0, 0, 258, 258);
  setfillstyle(solidfill, blue);
  floodfill(10, 10, blue);

  setcolor(white); { white color pen becuse of outline of stars }
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