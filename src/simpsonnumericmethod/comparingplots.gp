set terminal png size 800,600

set output "comparacion_tiempo.png"
set title "Tiempo de ejecución: Riemann vs Simpson"
set xlabel "Iteraciones"
set ylabel "Tiempo (ms)"
set logscale y

plot "data.dat" using 2:xtic(1) with linespoints title "Riemann", \
     "data2.dat" using 2:xtic(1) with linespoints title "Simpson"

unset logscale y
set output "comparacion_convergencia.png"
set title "Convergencia: Riemann vs Simpson"
set xlabel "Iteraciones"
set ylabel "Resultado"

plot "data.dat" using 3:xtic(1) with linespoints title "Riemann", \
     "data2.dat" using 3:xtic(1) with linespoints title "Simpson"