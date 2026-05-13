set terminal png size 900,600

set output "simpson_parallel_vs_sequential.png"

set title "Simpson 1/3: Secuencial vs Paralelizado"
set xlabel "Iteraciones"
set ylabel "Tiempo de ejecución (ms)"

set logscale x
set logscale y

plot "data3.dat" using 1:2 with linespoints title "Secuencial", \
     "data4.dat" using 1:2 with linespoints title "Paralelizado"