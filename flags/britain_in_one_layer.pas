program britain_in_one_layer;
uses graph;
var d, m, x, y :integer;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');
  setcolor(lightblue);
  rectangle(0, 0, 638, 479);

  line(0, 210, 280, 210); { cross in flag }
  line(280, 0, 280, 210);
  line(360, 0, 360, 210);
  line(360, 210, 640, 210);
  line(360, 270, 640, 270);
  line(360, 270, 360, 480);
  line(280, 270, 280, 480);
  line(280, 270, 0, 270);

  line(38, 480, 260, 300); { lower left part of the flag }
  line(260, 300, 260, 480);
  line(0, 480, 236, 290);
  line(236, 290, 260, 290);
  line(260, 290, 26, 480);
  line(0, 290, 200, 290);
  line(200, 290, 0, 450);

  line(0, 0, 236, 190); { upper left part of the flag }
  line(236, 190, 206, 190);
  line(206, 190, 0, 26);
  line(0, 38, 190, 190);
  line(190, 190, 0, 190);
  line(28, 0, 260, 180);
  line(260, 180, 260, 0);

  line(380, 480, 380, 300); { lower right part of the flag }
  line(380, 300, 602, 480);
  line(640, 480, 400, 290);
  line(400, 290, 430, 290);
  line(430, 290, 640, 454);
  line(640, 290, 448, 290);
  line(448, 290, 640, 442);

  line(380, 0, 380, 180); { upper right part of the flag }
  line(380, 180, 602, 0);
  line(612, 0, 380, 190);
  line(380, 190, 408, 109);
  line(408, 190, 640, 0);
  line(640, 38, 448, 190);
  line(448, 190, 640, 190);
  setfillstyle(solidfill, white); { coloring of the lower left part of the flag }
  floodfill(278, 272, lightblue);
  setfillstyle(solidfill, blue);
  floodfill(20, 400, lightblue);
  floodfill(100, 470, lightblue);
  setfillstyle(solidfill, red);
  floodfill(20, 476, lightblue);

  setfillstyle(solidfill, white); { coloring of the upper left part of the flag }
  floodfill(20, 4, lightblue);
  setfillstyle(solidfill, blue);
  floodfill(20, 160, lightblue);
  floodfill(100, 4, lightblue);
  setfillstyle(solidfill, red);
  floodfill(4, 10, lightblue);

  setfillstyle(solidfill, white); { coloring the lower right part of the flag }
  floodfill(362, 450, lightblue);
  setfillstyle(solidfill, blue);
  floodfill(400, 460, lightblue);
  floodfill(620, 300, lightblue);
  setfillstyle(solidfill, red);
  floodfill(630, 452, lightblue);

  setfillstyle(solidfill, white); { coloring of the burnt right part of the flag }
  floodfill(370, 4, lightblue);
  setfillstyle(solidfill, blue);
  floodfill(400, 10, lightblue);
  floodfill(600, 160, lightblue);
  setfillstyle(solidfill, red);
  floodfill(620, 4, lightblue);

  setfillstyle(solidfill, red); { flag cross coloring }
  floodfill(320, 240, lightblue);

  readln;
  closegraph;
end.