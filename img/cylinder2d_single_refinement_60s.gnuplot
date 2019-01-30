plotname = "cylinder2d_single_refinement_60s"

load 'common/velocity_fluid.gnuplot'

plot 'data/cylinder2d_single_level_refinement_60s_0.csv' using 6:7:(sqrt($2*$2+$3*$3)) palette pt 5 ps 1.3 notitle,\
     'data/cylinder2d_single_level_refinement_60s_1.csv' using 6:7:(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.7 notitle

load 'common/velocity_wrapper.gnuplot'

set obj 1 rect from 0.75,0.55 to 8.75,3.55
set obj 1 fillstyle empty border -1 front lw 1

load 'common/include_fluid.gnuplot'
