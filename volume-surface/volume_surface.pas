program volume_surface;
uses crt;
var select, a, b, c, volume, surface, r, s, v: real;
const PI = 22/7; {more accurate than 3.14}
begin
  clrscr;
  writeln('The program calculates the volume and area of the following bodies:');
  writeln('cube, square, sphere, rotary cone, rotary cylinder.');
  writeln('1. cube');
  writeln('2. quader');
  writeln('3. sphere');
  writeln('4. rotary cone');
  writeln('5. rotary cylinder');
  writeln;
  writeln;
  writeln('Choose a body using the number that represents it:');
  writeln;
  readln(select);

  if select = 1 then
  begin
    writeln;
    writeln('You chose a cube:');
    writeln;
    writeln('Enter cube side');
    writeln;
    readln(a);
    volume:= a * a * a;
    surface:= 6 * a * a;
    writeln('Cube volume is:', volume: 10: 8, 'cubic units.');
    writeln('The surface of the cube is:', surface: 10: 8, 'square units.');
  end

  else if select = 2 then
  begin
    writeln;
    writeln('You chose quader:');
    writeln;
    writeln;
    writeln('Enter a');
    writeln;
    readln(a);
    writeln;
    writeln ('Enter b');
    writeln;
    readln(b);
    writeln;
    writeln('Enter c');
    writeln;
    readln(c);
    volume:= a * b * c;
    surface:= (2 * (a * b + a * c + b * c));
    writeln('Quader volume is:', volume: 10: 8, 'cubic units.');
    writeln('Square surface is:', surface: 10: 8, 'square units.');
  end

  else if select = 3 then
  begin
    writeln;
    writeln('You chose sphere:');
    writeln;
    writeln;
    writeln('Enter radius r:');
    writeln;
    readln(r);
    writeln;
    volume:= 4/3 * PI * r * r * r;
    surface:= 4 * PI * r * r;
    writeln ('Sphere volume is:', volume: 10: 8, 'cubic units.');
    writeln ('The surface of a sphere is:', surface: 10: 8, 'square units.');
  end


  else if select = 4 then
  begin
    writeln;
    writeln('You chose rotary cone:');
    writeln;
    writeln;
    writeln('Enter base radius r:');
    writeln;
    readln(r);
    writeln;
    writeln('Enter size:');
    writeln;
    readln(s);
    writeln;
    writeln('Enter height:');
    writeln;
    readln(v);
    writeln;
    volume:= 1/3 * (PI * r * r * v);
    surface:= PI * r * r + PI * r * v;
    writeln('The volume of the rotating cone is:', volume: 10: 8, 'cubic units.');
    writeln('Surface of the rotating cone:', surface: 10: 8, 'square units.');
  end

  else if select = 5 then
  begin
    writeln;
    writeln('You have chosen rotary cylinder:');
    writeln;
    writeln;
    writeln('Enter base radius r:');
    writeln;
    readln(r);
    writeln;
    writeln('Enter height:');
    writeln;
    readln(v);
    writeln;
    volume:= PI * r * r * v;
    surface:= (2 * PI * r * r + 2 * PI * r * v);
    writeln('Rotary cylinder volume is:', volume: 10: 8, 'cubic units.');
    writeln('Rotary cylinder surface:', surface: 10: 8, 'square units.');
  end

  else
    writeln('You entered a number outside the range (1 - 5).');
  readln;
end.