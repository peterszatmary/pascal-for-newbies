program BRITANIA;
uses graph;
var d, m, x, y : integer;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');
  bar(0, 0, 638, 479);

{-------kriz vo vlajke-------------------------------}

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

{--------------dolna lava cast vlajky----------------}

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

{-------------horna lava cast vlajky-----------------------}

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

{-------------dolna prava cast vlajky------------------}

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

{---------horna prava cast vlajky---------------}

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
</pre>


<strong>Verzia kreslenia v jednej vrstve s hraničnými čiarami</strong>


<pre class="lang:delphi decode:true " >

program BRITANIA;
uses graph;
var d, m, x, y :integer;

begin
d := detect;
initgraph(d, m, 'c:\tp\bgi');
setcolor(lightblue);
rectangle(0, 0, 638, 479);

line(0, 210, 280, 210); { kriz vo vlajke }
line(280, 0, 280, 210);
line(360, 0, 360, 210);
line(360, 210, 640, 210);
line(360, 270, 640, 270);
line(360, 270, 360, 480);
line(280, 270, 280, 480);
line(280, 270, 0, 270);

line(38, 480, 260, 300); { dolna lava cast vlajky }
line(260, 300, 260, 480);
line(0, 480, 236, 290);
line(236, 290, 260, 290);
line(260, 290, 26, 480);
line(0, 290, 200, 290);
line(200, 290, 0, 450);

line(0, 0, 236, 190); { horna lava cast vlajky }
line(236, 190, 206, 190);
line(206, 190, 0, 26);
line(0, 38, 190, 190);
line(190, 190, 0, 190);
line(28, 0, 260, 180);
line(260, 180, 260, 0);

line(380, 480, 380, 300); { dolna prava cast vlajky }
line(380, 300, 602, 480);
line(640, 480, 400, 290);
line(400, 290, 430, 290);
line(430, 290, 640, 454);
line(640, 290, 448, 290);
line(448, 290, 640, 442);

line(380, 0, 380, 180); { horna prava cast vlajky }
line(380, 180, 602, 0);
line(612, 0, 380, 190);
line(380, 190, 408, 109);
line(408, 190, 640, 0);
line(640, 38, 448, 190);
line(448, 190, 640, 190);
setfillstyle(solidfill, white); { vyfarbenie dolnej lavej casti vlajky }
floodfill(278, 272, lightblue);
setfillstyle(solidfill, blue);
floodfill(20, 400, lightblue);
floodfill(100, 470, lightblue);
setfillstyle(solidfill, red);
floodfill(20, 476, lightblue);

setfillstyle(solidfill, white); { vyfarbenie horne lavej casti vlajky }
floodfill(20, 4, lightblue);
setfillstyle(solidfill, blue);
floodfill(20, 160, lightblue);
floodfill(100, 4, lightblue);
setfillstyle(solidfill, red);
floodfill(4, 10, lightblue);

setfillstyle(solidfill, white); { vyfarbenie dolnej pravej casti vlajky }
floodfill(362, 450, lightblue);
setfillstyle(solidfill, blue);
floodfill(400, 460, lightblue);
floodfill(620, 300, lightblue);
setfillstyle(solidfill, red);
floodfill(630, 452, lightblue);

setfillstyle( solidfill, white); { vyfarbenie horenej pravej casti vlajky }
floodfill(370, 4, lightblue);
setfillstyle(solidfill, blue);
floodfill(400, 10, lightblue);
floodfill(600, 160, lightblue);
setfillstyle(solidfill, red);
floodfill(620, 4, lightblue);

setfillstyle(solidfill, red); { vyfarbenie kriza vlajky }
floodfill(320, 240, lightblue);

readln;
closegraph;
end.