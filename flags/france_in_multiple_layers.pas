program france_in_multiple_layers;
uses graph;
var d, m, x, y : integer;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');

  setcolor(yellow); { yellow color of pen }
  rectangle(0, 0, 638, 479);
  line(213, 0, 213, 479);
  line(426, 0, 426, 479);

  setfillstyle(solidfill, blue);
  floodfill(2, 2, yellow); { farba ohranicenia }

  setfillstyle(solidfill, white);
  floodfill(215, 240, yellow); { border color }

  setfillstyle(solidfill, red);
  floodfill(428, 240, yellow); { border color}

  readln;
  closegraph;
end.