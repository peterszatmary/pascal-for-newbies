program yin_yang;
uses graph;
var d, m : integer;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');

  circle(320, 240, 100);
  ARC(272, 253, 5, 175, 50);
  ARC(368, 227, 185, 0, 50);

  circle(370, 240, 25); { black little circle }

  setfillstyle(1, white);
  floodfill(290, 190, white);

  circle(270, 240, 25); { white little circle }
  setfillstyle(1, white);
  floodfill(270, 240, white);

  circle(320, 240, 102);
  circle(320, 240, 104); { 2 circles around }

  readln;
  closegraph;
end.