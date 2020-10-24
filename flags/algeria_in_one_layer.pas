program algeria_in_one_layer;
uses graph;
var d, m : integer;

begin
  d := detect;
  initgraph(d, m, 'c:\tp\bgi');

  rectangle(0, 0, 639, 479); { obrysy su bielou, nevadi to,,,????? }
  setcolor(blue);
  ARC(320, 240, 35, 325, 91); { vonkajsi }
  ARC(330, 240, 40, 320, 82); { vnutorny }

  setfillstyle(solidfill, red); { vyfarbenie polkruhu cervenou }
  floodfill(231, 240, blue); { bod pre vyfarbenie, farba ohranicenia }

  setcolor(blue);
  line(370, 215, 355, 240); { zaciatok hviezdy }
  line(355, 240, 325, 235);
  line(325, 235, 345, 257);
  line(345, 257, 329, 282);
  line(329, 282, 359, 268);
  line(359, 268, 378, 293);
  line(378, 293, 375, 263);
  line(375, 263, 400, 249);
  line(400, 249, 374, 243);
  line(374, 243, 370, 215); { koniec hviezdy }

  floodfill(350, 240, blue);
  line(313, 0, 313, 149); { stredove ciary modrou }
  line(313, 160, 313, 320);
  line(313, 331, 313, 479);
  setfillstyle(solidfill, green); { vyfarbenie zelenou vacsia lava cast }
  floodfill(3, 3, blue);
  setfillstyle(solidfill, green);
  floodfill(310, 240, blue); { vyfarbenie zelenou mensia lava cast }
  setfillstyle(solidfill, white);
  floodfill(636, 16, blue); { vyfarbenie bielou prava cast }

  readln;
  closegraph;
end.