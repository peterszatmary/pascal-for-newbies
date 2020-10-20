program vlajka_KOREJSKALR_2;
uses graph;
var d, m, i : integer;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');

  setcolor(blue);
  rectangle(0, 0, 638, 90);
  rectangle(0, 390, 638, 478);

  setfillstyle(solidfill, blue);
  floodfill(10, 400, blue);
  floodfill(10, 80, blue);
  setcolor(white); { biele pruzky, obdlzniky, RECTANGLE }
  rectangle(0, 91, 638, 100);
  rectangle(0, 380, 638, 389);

  setfillstyle(solidfill, white); { vyfarbenie bielych pruzkov }
  floodfill(10, 381, white);
  floodfill(10, 99, white);

  setcolor(red); { cerveny obdlznik }
  rectangle(0, 101, 638, 379);
  setfillstyle(solidfill, red); { vyfarbenie cerveneho obdlznika }
  floodfill(600, 240, red);

  setcolor(white);
  circle(175, 240, 100); { circle }

  setfillstyle(solidfill, white); { vyplnenie kruznice bielou }
  floodfill(175, 141, white);

  setcolor(red);
  line(173, 144, 192, 204); { hviezda }
  line(192, 204, 262, 204);
  line(262, 204, 205, 246);
  line(205, 246, 230, 313);
  line(230, 313, 173, 273);
  line(173, 273, 116, 315);
  line(116, 315, 141, 248);
  line(141, 248, 84, 206);
  line(84, 206, 154, 206);
  line(154, 206, 173, 144);

  setfillstyle(solidfill, red); { vyfarbenie hviezdy }
  floodfill(173, 173, red);

  readln;
  closegraph;
end.</pre>


<strong>Verzia kreslenia v jednej vrstve s hraničnými čiarami:</strong>


<pre class="lang:delphi decode:true " >program vlajka_KOREJSKALR_2;
uses graph;
var d, m, i : integer;

begin
d := detect;
initgraph(d, m, 'c:\tp\bgi');

setcolor(yellow);
rectangle(0, 0, 638, 478); { obrys vlajky zltou }

line(0, 390, 638, 390);
line(0, 90, 638, 90);
setfillstyle(solidfill ,blue );
floodfill(10, 400, yellow);
floodfill(10, 80, yellow);

line(0, 380, 638, 380);
line(0, 100, 638, 100);
setfillstyle(solidfill, white);
floodfill(10, 381, yellow);
floodfill(10, 99, yellow);

circle(175, 240, 100);

line(173, 144, 192, 204); { hviezda }
line(192, 204, 262, 204);
line(262, 204, 205, 246);
line(205, 246, 230, 313);
line(230, 313, 173, 273);
line(173, 273, 116, 315);
line(116, 315, 141, 248);
line(141, 248, 84, 206);
line(84, 206, 154, 206);
line(154, 206, 173, 144);

setfillstyle(solidfill, red);
floodfill(173, 173, yellow);
setfillstyle(solidfill, red);
floodfill(600, 240, yellow);

setfillstyle(solidfill, white);
floodfill(175, 141, yellow);

readln;
closegraph;
end.