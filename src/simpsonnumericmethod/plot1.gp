set terminal png size 800,600

set output "tiempo_vs_iteraciones.png"
set title "Iteraciones vs Tiempo de ejecución"
set xlabel "Iteraciones"
set ylabel "Tiempo (ms)"
set logscale y

plot "data.dat" using 2:xtic(1) with linespoints title "Tiempo"

unset logscale y
set output "convergencia_vs_iteraciones.png"
set title "Iteraciones vs Convergencia"
set xlabel "Iteraciones"
set ylabel "Resultado"

plot "data.dat" using 3:xtic(1) with linespoints title "Convergencia"