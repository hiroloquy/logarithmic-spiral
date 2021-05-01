# Setting --------------------
reset
set nokey
set term gif animate delay 8 size 854,480
set output 'logarithmic-spiral.gif'
set parametric
set size ratio -1
set samples 1e4
set tics font 'Times New Roman,18'
set xl 'x({/symbol q})' font 'Latin Modern Math, 20'
set yl 'y({/symbol q})' font 'Latin Modern Math, 20'
L = 60
set xr[-L:L]
set yr[-L:L]
set xtics -L, 20, L
set ytics -L, 20, L
set grid

# Function --------------------
a=0.18
b=0.20
x(t) = t<=h? a*exp(b*t)*cos(t): 1/0
y(t) = t<=h? a*exp(b*t)*sin(t): 1/0
title(i, a, b) = sprintf("x({/symbol q})=ae^{b{/symbol q}}cos{/symbol q}, \
 y({/symbol q})=ae^{b{/symbol q}}sin{/symbol q}\n\n\
 a=%.2f  b=%.2f  {/symbol q}= %4d °",a, b, 180/20*i)

# Plot --------------------
n = 10
set tr[0:n*pi]
N = 20*n
do for [i=0:30]{
 set title title(0, a, b) font 'Latin Modern Math, 20'
 h = pi/20 * 0
 plot x(t), y(t) lw 1 lc 6,\
  x(h), y(h) with points pt 7 ps 1 lc 6
}

do for [i=1:N]{
 set title title(i, a, b) font 'Latin Modern Math, 20'
 h = pi/20 * i
 plot x(t), y(t) lw 1 lc 6,\
  x(h), y(h) with points pt 7 ps 1 lc 6
}

set out
set terminal wxt enhanced