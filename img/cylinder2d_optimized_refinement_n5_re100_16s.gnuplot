plotname = "cylinder2d_optimized_refinement_n5_re100_16s"

load 'common/velocity_fluid.gnuplot'

set yrange [0:4.2]

plot 'data/cylinder2d_optimized_refinement_n5_re100_16s_5.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 5.3 notitle,\
     'data/cylinder2d_optimized_refinement_n5_re100_16s_4.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 2.6 notitle,\
     'data/cylinder2d_optimized_refinement_n5_re100_16s_2.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 2.6 notitle,\
     'data/cylinder2d_optimized_refinement_n5_re100_16s_3.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 1.7 notitle,\
     'data/cylinder2d_optimized_refinement_n5_re100_16s_1.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 1.7 notitle,\
     'data/cylinder2d_optimized_refinement_n5_re100_16s_0.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.7 notitle\

load 'common/velocity_wrapper.gnuplot'

set obj 1 rect from 21.165,0 to 22,4.1
set obj 1 fillstyle empty border -1 front lw 1

set obj 2 rect from 21.65,0 to 22,4.1
set obj 2 fillstyle empty border -1 front lw 1

set obj 3 rect from 1.4,1.45 to 2.675,2.7
set obj 3 fillstyle empty border -1 front lw 1

set obj 4 rect from 0.97,0.355 to 6.05,3.75
set obj 4 fillstyle empty border -1 front lw 1

set obj 5 rect from 0.55,0.15 to 11.05,3.95
set obj 5 fillstyle empty border -1 front lw 1

load 'common/include_fluid.gnuplot'
