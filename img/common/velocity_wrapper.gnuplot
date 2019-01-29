reset

set term pdfcairo enh size 21cm, 5cm
set output 'static/'.plotname.'.pdf'

load 'common/moreland.pal'

set size ratio -1
set xtics 0,2,22
set ytics 0,1,4
set cbtics 0,0.5,1.5
set cbrange [0:1.5]

set cblabel "Geschwindigkeitsnorm"

plot 'tmp/'.plotname.'.png' binary filetype=png origin=(0.00625,0.00625) dx=0.00625 dy=0.00625 with rgbimage palette
