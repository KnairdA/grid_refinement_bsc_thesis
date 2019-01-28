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

set obj 1 rect from 0.75,0.55 to 8.75,3.55
set obj 1 fillstyle empty border -1 front

plot 'data/cylinder2d_single_level_refinement_60s_0.csv' using 6:7:(log($5/0.000866025)/log(2)) palette pt 5 ps 0.13 notitle,\
     'data/cylinder2d_single_level_refinement_60s_1.csv' using 6:7:(log($5/0.000866025)/log(2)) palette pt 5 ps 0.065 notitle
