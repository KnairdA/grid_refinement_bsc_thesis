plotname = "cylinder2d_improved_grid_60s_knudsen"
knudsen = 0.000866025

load 'common/knudsen_fluid.gnuplot'

set obj 1 rect from 0.75,0.05 to 8.75,4.05
set obj 1 fillstyle empty border -1 front lw 4

set obj 2 rect from 1,1.05 to 5,3.05
set obj 2 fillstyle empty border -1 front lw 4

plot 'data/cylinder2d_improved_grid_twice_refined_60s_2.csv' using 6:7:(log($5/knudsen)/log(2)) palette pt 5 ps 1.3 notitle,\
     'data/cylinder2d_improved_grid_twice_refined_60s_1.csv' using 6:7:(log($5/knudsen)/log(2)) palette pt 5 ps 0.7 notitle,\
     'data/cylinder2d_improved_grid_twice_refined_60s_0.csv' using 6:7:(log($5/knudsen)/log(2)) palette pt 5 ps 0.3 notitle\

load 'common/knudsen_wrapper.gnuplot'
