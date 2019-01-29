reset

set term pdfcairo enh size 21cm, 5cm
set output 'static/'.plotname.'.pdf'

set palette defined (0 "dark-green", 0.5 "dark-green", 0.5 "yellow", 1.5 "yellow", 1.5 "red", 2 "red")

set size ratio -1
set xtics 0,2,22
set ytics 0,1,4
set cbtics ("{/Symbol \243}0" 0, "1" 1, "{/Symbol \263}2" 2)
set cbrange [0:2]

set cblabel "Verfeinerungskriterium" offset 1,0

plot 'tmp/'.plotname.'.png' binary filetype=png origin=(0.00625,0.00625) dx=0.00625 dy=0.00625 with rgbimage palette
