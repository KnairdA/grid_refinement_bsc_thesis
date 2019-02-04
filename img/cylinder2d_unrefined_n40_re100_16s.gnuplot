plotname = "cylinder2d_unrefined_n40_re100_16s"

load 'common/velocity_fluid.gnuplot'

plot 'data/cylinder2d_unrefined_n40_re100_16s_0.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.7 notitle,\
     'data/cylinder2d_unrefined_n40_re100_16s_1.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.7 notitle,\
     'data/cylinder2d_unrefined_n40_re100_16s_2.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.7 notitle,\
     'data/cylinder2d_unrefined_n40_re100_16s_3.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 0.7 notitle

load 'common/velocity_wrapper.gnuplot'

load 'common/include_fluid.gnuplot'
