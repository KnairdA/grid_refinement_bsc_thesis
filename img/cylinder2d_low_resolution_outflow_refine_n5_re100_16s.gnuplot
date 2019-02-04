plotname = "cylinder2d_low_resolution_outflow_refine_n5_re100_16s"

load 'common/velocity_fluid.gnuplot'

set yrange [0:4.2]

plot 'data/cylinder2d_low_resolution_outflow_refine_n5_re100_16s_2.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 5.3 notitle,\
     'data/cylinder2d_low_resolution_outflow_refine_n5_re100_16s_1.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 2.6 notitle,\
     'data/cylinder2d_low_resolution_outflow_refine_n5_re100_16s_0.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 2.6 notitle\

load 'common/velocity_wrapper.gnuplot'

set obj 1 rect from 21.165,0 to 22,4.1
set obj 1 fillstyle empty border -1 front lw 1

set obj 2 rect from 21.65,0 to 22,4.1
set obj 2 fillstyle empty border -1 front lw 1

load 'common/include_fluid.gnuplot'
