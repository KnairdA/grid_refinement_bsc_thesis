plotname = "cylinder2d_unrefined_60s"

load 'common/velocity_fluid.gnuplot'

plot 'data/cylinder2d_unrefined_60s.csv' using 6:7:(sqrt($2*$2+$3*$3)) palette pt 5 ps 1.3 notitle

load 'common/velocity_wrapper.gnuplot'

load 'common/include_fluid.gnuplot'
