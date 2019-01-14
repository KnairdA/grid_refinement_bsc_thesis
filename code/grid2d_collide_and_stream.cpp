template <typename T, template<typename> class DESCRIPTOR>
void Grid2D<T,DESCRIPTOR>::collideAndStream()
{
  for ( auto& fineCoupler : _fineCouplers ) {
    fineCoupler->store(); // Speichern von Werten in $x_{g \to f}^g \in \G$ zu Zeit $t$
  }

  this->getSuperLattice().collideAndStream(); // Zeitschritt $t \to t+\delta t_g$ auf $\G$

  for ( auto& fineGrid : _fineGrids ) {
    fineGrid->collideAndStream(); // Zeitschritt $t \to t+\delta t_g / 2$ auf $\F$
  }

  for ( auto& fineCoupler : _fineCouplers ) {
    fineCoupler->interpolate(); // Interpolation von Werten in $x_{g \to f}^g \in \G$ zu Zeit $t + \delta t_g / 2$
    fineCoupler->couple();      // Setzen von $f_{f,i}$ in $x_{g \to f} \in \F$
  }

  for ( auto& fineGrid : _fineGrids ) {
    fineGrid->collideAndStream(); // Zeitschritt $t+\delta t_f \to t+2\delta t_f$ auf $\F$
  }

  for ( auto& fineCoupler : _fineCouplers ) {
    fineCoupler->store();    // Speichern von Werten in $x_{g \to f}^g \in \G$ zu Zeit $t + \delta t_g$
    fineCoupler->couple();   // Setzen von $f_{f,i}$ in $x_{g \to f} \in \F$
  }

  for ( auto& coarseCoupler : _coarseCouplers ) {
    coarseCoupler->couple(); // Setzen von $f_{g,i}$ in $x_{f \to g} \in \G$
  }
}
