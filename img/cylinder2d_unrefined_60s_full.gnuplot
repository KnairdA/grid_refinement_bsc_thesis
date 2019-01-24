set term pdfcairo enh size 21cm, 5cm

load 'moreland.pal'

set datafile separator ','

set size ratio -1

set yrange [0:4.1]
set xrange [0:22]
set cbrange [0:1.5]

set xtics 0,2,22
set ytics 0,1,4
set cbtics 0,0.5,1.5

set cblabel "Geschwindigkeitsnorm"

plot 'data/poiseuille2d_unrefined_60s_full.csv' using  6:7:(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.13 notitle
