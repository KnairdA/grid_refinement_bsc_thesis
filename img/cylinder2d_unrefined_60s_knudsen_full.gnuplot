set term pdfcairo enh size 21cm, 5cm

set palette defined (0 "dark-green", 0.5 "dark-green", 0.5 "yellow", 1.5 "yellow", 1.5 "red", 2 "red")

set datafile separator ','

set size ratio -1

set yrange [0:4.1]
set xrange [0:22]
set cbrange [0:2]

set xtics 0,2,22
set ytics 0,1,4
set cbtics ("{/Symbol \243}0" 0, "1" 1, "{/Symbol \263}2" 2)

set cblabel "Verfeinerungskriterium" offset 1,0

plot 'data/cylinder2d_unrefined_60s_full.csv' using 6:7:(log($5/0.000866025)/log(2)) palette pt 5 ps 0.13 notitle
