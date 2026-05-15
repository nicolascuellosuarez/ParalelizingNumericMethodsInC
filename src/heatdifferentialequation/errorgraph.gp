set terminal png size 800,600
set output "error_perfil.png"
set xlabel "Posicion x (m)"
set ylabel "Error absoluto"
set title "Error entre solucion numerica y exacta"
plot "resultados.dat" using 1:4 with linespoints title "Error"