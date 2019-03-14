reset

set term pdfcairo enh size 21cm, 5cm
set output 'static/'.plotname.'.pdf'

load 'common/moreland.pal'

set size ratio -1
set xtics 0,2,22
set ytics 0,1,4
set cbtics 0,0.5,2.0
set cbrange [0:2.0]

set colorbox user origin graph 1.01, graph 0 size 0.02, graph 1
set rmargin at screen 0.91

set cblabel "Geschwindigkeitsnorm"
