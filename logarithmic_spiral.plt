reset
set angle radians

#=================== Parameter ====================
a=0.18    # Coefficient of log spiral
b=0.20

L = 60    # Plot area
k = 10    # 0 ≦ θ ≦ k*pi [rad]
n = 20    # Resolution
N = k*n

#=================== Function ====================
# Curve
x(t) = a*exp(b*t)*cos(t)
y(t) = a*exp(b*t)*sin(t)

# Title
title(a, b, theta) = sprintf("{/:Italic x}({/:Italic θ})={/:Italic ae}^{{/:Italic bθ}}cos{/:Italic θ} ,   \
{/:Italic y}({/:Italic θ})={/:Italic ae}^{{/:Italic bθ}}sin{/:Italic θ}\n\n\
{/:Italic a}=%.2f  {/:Italic b}=%.2f  {/:Italic θ}= %d°",a, b, theta)

#=================== Plot ====================
set nokey
set term gif animate delay 5 size 900, 480 font 'Times New Roman, 20'
set output 'logarithmic_spiral.gif'
set parametric
set size ratio -1
set samples 1e4
set xlabel '{/:Italic x}'
set ylabel '{/:Italic y}'
set xrange [-L:L]
set yrange [-L:L]
set xtics 20 font ', 16'
set ytics 20 font ', 16'
set grid

# Stop animation for 30 frames
do for [i=1:30]{
  set title title(a, b, 0)
  h = pi/n * 0
  set trange [0:h]
  plot x(t), y(t) lw 1 lc 6, x(h), y(h) with points pt 7 ps 1 lc 6
}

# Update animation for N frames
do for [i=1:N]{
  set title title(a, b, 180/n*i)  # [deg]
  h = pi/n * i                    # [rad]
  set trange [0:h]
  plot x(t), y(t) lw 1 lc 6, x(h), y(h) with points pt 7 ps 1 lc 6
}

set out