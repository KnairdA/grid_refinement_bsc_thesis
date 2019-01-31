plotname = "cylinder2d_low_resolution_outflow_refine_60s_knudsen"
knudsen = 0.000866025

load 'common/knudsen_fluid.gnuplot'

plot 'data/cylinder2d_low_resolution_outflow_refine_60s_1.csv' using ($6+0.05):($7+0.05):(log($5/knudsen)/log(2)) palette pt 5 ps 5.3 notitle,\
     'data/cylinder2d_low_resolution_outflow_refine_60s_0.csv' using 6:($7+0.05):(log($5/knudsen)/log(2)) palette pt 5 ps 2.6 notitle\

load 'common/knudsen_wrapper.gnuplot'

set obj 3 rect from 20.95,0 to 22,4.1
set obj 3 fillstyle empty border -1 front lw 1

load 'common/include_fluid.gnuplot'
