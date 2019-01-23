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

set obj 1 rect from 0.75,0.55 to 8.75,3.55
set obj 1 fillstyle empty border -1 front

plot 'data/poiseuille2d_single_level_refinement_60s_0.csv' using 6:7:(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.13 notitle,\
     'data/poiseuille2d_single_level_refinement_60s_1.csv' using 6:7:(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.065 notitle
