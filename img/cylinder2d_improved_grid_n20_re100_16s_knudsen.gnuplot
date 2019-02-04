plotname = "cylinder2d_improved_grid_n20_re100_16s_knudsen"
knudsen = 0.000288675

load 'common/knudsen_fluid.gnuplot'

plot 'data/cylinder2d_improved_grid_twice_refined_n20_re100_16s_0.csv' using ($6*10):($7*10):(log($5/knudsen)/log(2)) palette pt 5 ps 1.3 notitle,\
     'data/cylinder2d_improved_grid_twice_refined_n20_re100_16s_2.csv' using ($6*10):($7*10):(log($5/knudsen)/log(2)) palette pt 5 ps 0.7 notitle,\
     'data/cylinder2d_improved_grid_twice_refined_n20_re100_16s_1.csv' using ($6*10):($7*10):(log($5/knudsen)/log(2)) palette pt 5 ps 0.3 notitle,\

load 'common/knudsen_wrapper.gnuplot'

set obj 1 rect from 0.5,0.05 to 8.51,4.05
set obj 1 fillstyle empty border -1 front lw 1

set obj 2 rect from 1,1.08 to 5.01,3.08
set obj 2 fillstyle empty border -1 front lw 1

load 'common/include_fluid.gnuplot'
