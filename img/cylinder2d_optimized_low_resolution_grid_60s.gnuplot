plotname = "cylinder2d_optimized_low_resolution_grid_60s"

load 'common/velocity_fluid.gnuplot'

plot 'data/cylinder2d_optimized_low_resolution_grid_60s_4.csv' using ($6+0.05):($7+0.05):(sqrt($2*$2+$3*$3)) palette pt 5 ps 5.3 notitle,\
     'data/cylinder2d_optimized_low_resolution_grid_60s_3.csv' using ($6+0.05):($7+0.05):(sqrt($2*$2+$3*$3)) palette pt 5 ps 2.6 notitle,\
     'data/cylinder2d_optimized_low_resolution_grid_60s_2.csv' using 6:($7+0.05):(sqrt($2*$2+$3*$3)) palette pt 5 ps 2.6 notitle,\
     'data/cylinder2d_optimized_low_resolution_grid_60s_1.csv' using 6:($7+0.05):(sqrt($2*$2+$3*$3)) palette pt 5 ps 1.3 notitle,\
     'data/cylinder2d_optimized_low_resolution_grid_60s_0.csv' using 6:($7+0.05):(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.6 notitle,\

load 'common/velocity_wrapper.gnuplot'

set obj 1 rect from 0.8,0.2 to 7.3,3.9
set obj 1 fillstyle empty border -1 front lw 1

set obj 2 rect from 0.975,1.125 to 3.23,2.875
set obj 2 fillstyle empty border -1 front lw 1

set obj 3 rect from 1.295,1.345 to 2.675,2.7
set obj 3 fillstyle empty border -1 front lw 1

set obj 4 rect from 20.95,0 to 22,4.1
set obj 4 fillstyle empty border -1 front lw 1

set title "Geeignet dreifach verfeinertes Gitter mit 7329 Knoten"

load 'common/include_fluid.gnuplot'
