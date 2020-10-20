program jinjang;
uses graph;
var d, m : integer;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');

  circle(320, 240, 100);
  ARC(272, 253, 5, 175, 50);
  ARC(368, 227, 185, 0, 50);

  circle(370, 240, 25); { cierny maly kruh }

  setfillstyle(1, white);
  floodfill(290, 190, white);

  circle(270, 240, 25); { biely maly kruh }
  setfillstyle(1, white);
  floodfill(270, 240, white);

  circle(320, 240, 102);
  circle(320, 240, 104); { 2 kruznice okolo }

  readln;
  closegraph;
end.