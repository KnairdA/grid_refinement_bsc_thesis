plotname = "cylinder2d_unoptimized_low_resolution_grid_60s"

load 'common/velocity_fluid.gnuplot'

plot 'data/cylinder2d_unoptimized_low_resolution_grid_60s.csv' using ($6+0.05):($7+0.05):(sqrt($2*$2+$3*$3)) palette pt 5 ps 2.9 notitle,\

load 'common/velocity_wrapper.gnuplot'

set title "Uniform aufgelöstes Gitter mit 7326 Knoten"

load 'common/include_fluid.gnuplot'
