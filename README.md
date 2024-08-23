program AreaCirculo;
function calcarea(base, altura: real ): real;
begin
  calcarea:= base*altura / 2;
  end;
const
PI = 3.1415;

var
area, base, altura, raio:  real;
begin
  readln(base, altura);
  area:= calcarea(base, altura);
  writeln('A area eh: ',area:4:2);
end.
