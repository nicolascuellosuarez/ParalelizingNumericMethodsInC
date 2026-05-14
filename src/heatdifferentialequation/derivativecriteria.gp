set terminal png size 1400,900
set output "derivative_criteria_of_a_function.png"

set title "f(x) = 7x^3 + 9x^2 - 2x - 25"
set xlabel "x"
set ylabel "f(x)"

set grid
set zeroaxis

# Mejor escala para apreciar la forma
set xrange [-3:2]
set yrange [-60:40]

set xtics 0.5
set ytics 10

# Bordes más visibles
set border linewidth 1.5

f(x) = 7*x**3 + 9*x**2 - 2*x - 25

x1 = (-9 - sqrt(123))/21
x2 = (-9 + sqrt(123))/21

y1 = f(x1)
y2 = f(x2)

# Tangentes horizontales
t1(x) = y1
t2(x) = y2

plot f(x) lw 3 title "f(x)", \
     t1(x) dashtype 2 lw 2 title "Tangente en x1", \
     t2(x) dashtype 2 lw 2 title "Tangente en x2", \
     '+' using (x1):(y1) with points pt 7 ps 2 title "Máximo local", \
     '+' using (x2):(y2) with points pt 7 ps 2 title "Mínimo local"