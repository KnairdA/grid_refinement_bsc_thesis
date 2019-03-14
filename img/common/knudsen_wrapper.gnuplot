reset

set term pdfcairo enh size 21cm, 5cm
set output 'static/'.plotname.'.pdf'

set palette defined (0 "dark-green", 0.5 "dark-green", 0.5 "yellow", 1.5 "yellow", 1.5 "red", 2 "red")

set size ratio -1
set xtics 0,2,22
set ytics 0,1,4
set cbtics ("{/Symbol \243}0" 0, "1" 1, "{/Symbol \263}2" 2)
set cbrange [0:2]

set colorbox user origin graph 1.01, graph 0 size 0.02, graph 1
set rmargin at screen 0.91

set cblabel "Verfeinerungskriterium" offset 1,0
