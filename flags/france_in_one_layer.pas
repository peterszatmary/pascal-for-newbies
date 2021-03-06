program france_in_multiple_layers;
uses graph;
var d, m : integer;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');

  rectangle(0, 0, 639, 479); { white border }
  setcolor(blue);
  ARC(320, 240, 35, 325, 91); { outer }
  ARC(330, 240, 40, 320, 82); { inner }

  setfillstyle(solidfill, red); { coloring the semicircle red }
  floodfill(231, 240, blue); { point for coloring, border color }

  setcolor(blue);
  line(370, 215, 355, 240); { start of the star }
  line(355, 240, 325, 235);
  line(325, 235, 345, 257);
  line(345, 257, 329, 282);
  line(329, 282, 359, 268);
  line(359, 268, 378, 293);
  line(378, 293, 375, 263);
  line(375, 263, 400, 249);
  line(400, 249, 374, 243);
  line(374, 243, 370, 215); { end of the star  }

  floodfill(350, 240, blue);
  line(313, 0, 313, 149); { middle blue line }
  line(313, 160, 313, 320);
  line(313, 331, 313, 479);
  setfillstyle(solidfill, green); { coloring green bigger left part }
  floodfill(3, 3, blue);
  setfillstyle(solidfill, green);
  floodfill(310, 240, blue); { coloring green smaller left part }
  setfillstyle(solidfill, white);
  floodfill(636, 16, blue); { coloring white right part }

  readln;
  closegraph;
end.