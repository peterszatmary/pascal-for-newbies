program britain_in_multiple_layers;
uses graph;
var d, m, x, y : integer;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');
  bar(0, 0, 638, 479);

{------- cross in the flag -------------------------------}

  setcolor(red);
  line(0, 210, 280, 210);
  line(280, 0, 280, 210);
  line(280, 210, 280, 0);
  line(280, 270, 0, 270);
  line(0, 270, 0, 210);
  line(280, 270, 280, 479);
  line(280, 479, 360, 479);
  line(360, 479, 360, 270);
  line(360, 270, 638, 270);
  line(638, 270, 638, 210);
  line(638, 210, 360, 210);
  line(360, 210, 360, 0);
  line(360, 0, 280, 0);
  setfillstyle(solidfill, red);
  floodfill(320, 240, red);

{-------------- lower left part of the flag ----------------}

  setcolor(blue);
  line(38, 479, 260, 300);
  line(260, 300, 260, 479);
  line(38, 479, 260, 479);
  setfillstyle(solidfill, blue);
  floodfill(200, 475, blue);

  line(0, 290, 200, 290);
  line(200, 290, 0, 450);
  line(0, 290, 0, 450);
  floodfill(2, 350, blue);

  setcolor(red);
  line(0, 479, 236, 290);
  line(236, 290, 260, 290);
  line(260, 290, 26, 479);
  line(26, 479, 0, 479);
  setfillstyle(solidfill, red);
  floodfill(2, 478, red);

{------------- upper left part of the flag -----------------------}

  line(0, 0, 236, 190);
  line(236, 190, 206, 190);
  line(206, 190, 0, 26);
  line(0, 0, 0, 26);
  setfillstyle(solidfill, red);
  floodfill(1, 10, red);

  setcolor(blue);
  line(0, 38, 190, 190);
  line(190, 190, 0, 190);
  line(0, 38, 0, 190);
  setfillstyle(solidfill, blue);
  floodfill(2, 100, blue);

  line(28, 0, 260, 180);
  line(260, 180, 260, 0);
  line(28, 0, 260, 0);
  floodfill(100, 50, blue);

{------------- lower right part of the flag ------------------}

  line(380, 479, 380, 300);
  line(380, 300, 602, 479);
  line(380, 479, 602, 479);
  floodfill(390, 478, blue);

  line(638, 290, 448, 290);
  line(448, 290, 638, 442);
  line(638, 290, 638, 442);
  floodfill(630, 300, blue);

  setcolor(red);
  line(638, 480, 400, 290);
  line(400, 290, 430, 290);
  line(430, 290, 638, 454);
  line(638, 480, 638, 454);
  setfillstyle(solidfill, red);
  floodfill(637, 478, red);

{--------- upper right part of the flag ---------------}

  line(612, 0, 380, 190);
  line(380, 190, 408, 190);
  line(408, 190, 640, 0);
  line(612, 0, 640, 0);
  floodfill(637, 1, red);

  setcolor(blue);
  line(380, 0, 380, 180);
  line(380, 180, 602, 0);
  line(380, 0, 602, 0);
  setfillstyle(solidfill, blue);
  floodfill(381, 1, blue);

  line(638, 38, 448, 190);
  line(448, 190, 638, 190);
  line(638, 38, 638, 190);
  floodfill(637, 180, blue);

  readln;
  closegraph;
end.