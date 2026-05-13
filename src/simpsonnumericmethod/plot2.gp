set terminal png size 800,600

set output "tiempo_vs_pares.png"
set title "Pares vs Tiempo de Ejecución"
set xlabel "Pares"
set ylabel "Tiempo (en ms)"
set logscale y

plot "data2.dat" using 2:xtic(1) with linespoints title "Tiempo"

unset logscale y
set output "convergencia_vs_pares.png"
set title "Pares vs Convergencia"
set xlabel "Pares"
set ylabel "Resultado de la Integral"

plot "data2.dat" using 3:xtic(1) with linespoints title "Convergencia"