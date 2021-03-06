reset

set terminal pngcairo size 3520, 656

set output 'tmp/'.plotname.'.png'

set palette defined (0 "dark-green", 0.5 "dark-green", 0.5 "yellow", 1.5 "yellow", 1.5 "red", 2 "red")

set datafile separator ','

set size 1,1
set margin 0,0,0,0

set yrange [0:4.1]
set xrange [0:22]
set cbrange [0:2]

unset colorbox
unset key
unset tics
unset border
