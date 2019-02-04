plotname = "cylinder2d_unrefined_n12_re100_16s"

load 'common/velocity_fluid.gnuplot'

plot 'data/cylinder2d_unrefined_n12_re100_16s.csv' using ($6*10):($7*10):(sqrt($2*$2+$3*$3)) palette pt 5 ps 2.25 notitle

load 'common/velocity_wrapper.gnuplot'

set title "Uniform aufgelöstes Gitter mit 13500 Knoten"

load 'common/include_fluid.gnuplot'
