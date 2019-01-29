plotname = "cylinder2d_unrefined_60s_knudsen"
knudsen = 0.000866025

load 'common/knudsen_fluid.gnuplot'

plot 'data/cylinder2d_unrefined_60s.csv' using 6:7:(log($5/knudsen)/log(2)) palette pt 5 ps 1.3 notitle

load 'common/knudsen_wrapper.gnuplot'
