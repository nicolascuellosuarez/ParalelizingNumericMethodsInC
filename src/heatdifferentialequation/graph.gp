set terminal png size 800,600
set output "temperatura_final.png"
set xlabel "Posicion x (m)"
set ylabel "Temperatura u(x, T_max)"
set title "Perfil de temperatura al tiempo T = 0.5 s"
plot "resultados.dat" using 1:2 with lines title "Solucion Numerica", \
     "resultados.dat" using 1:3 with lines title "Solucion Exacta"