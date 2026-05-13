set terminal png size 800,600

set output "error_vs_iteraciones.png"

set title "Error absoluto: Riemann vs Simpson"
set xlabel "Iteraciones"
set ylabel "Error absoluto"

set logscale x
set logscale y

plot "data.dat" using 1:4 with linespoints title "Riemann", \
     "data2.dat" using 1:4 with linespoints title "Simpson"