set terminal png size 800,600
set output "plot1.png"

splot [-5:5] [-5:5] 2*x + y**2