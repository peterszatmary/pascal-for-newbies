program algeria_in_multiple_layers;
uses graph;
var d, m : integer;

begin
  d := detect;
  initgraph (d, m, 'c:\tp\bgi');

  setcolor(green);
  rectangle(0, 0, 320, 479);
  setfillstyle(solidfill, green);
  floodfill(3, 3, green);

  setcolor(white);
  rectangle(321, 0, 639, 479);
  setfillstyle(solidfill, white);
  floodfill(630, 10, white);

  setcolor(red);
  ARC(320, 240, 35, 325, 91); { outer }
  ARC(330, 240, 40, 320, 82); { inner }
{ point for coloring, border color }

  setcolor(red);
  line(370, 215, 355, 240); { beginning of a star }
  line(355, 240, 325, 235);
  line(325, 235, 345, 257);
  line(345, 257, 329, 282);
  line(329, 282, 359, 268);
  line(359, 268, 378, 293);
  line(378, 293, 375, 263);
  line(375, 263, 400, 249);
  line(400, 249, 374, 243);
  line(374, 243, 370, 215); { ending of of a star }

  setfillstyle(solidfill, red); { coloring the semicircle red }
  floodfill(231, 240, red);
  floodfill(350, 240, red); { fill the star }

  readln;
  closegraph;
end.
