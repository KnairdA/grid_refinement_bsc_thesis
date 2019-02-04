plotname = "cylinder2d_unrefined_n20_re100_16s_knudsen"
knudsen = 0.000288675

load 'common/knudsen_fluid.gnuplot'

plot 'data/cylinder2d_unrefined_n20_re100_16s.csv' using ($6*10):($7*10):(log($5/knudsen)/log(2)) palette pt 5 ps 1.3 notitle

load 'common/knudsen_wrapper.gnuplot'

load 'common/include_fluid.gnuplot'
