for (int y=1; y < this->_coarseSize-2; ++y) {
  const auto rho  = order4interpolation(_c2f_rho,  y); // Siehe Listing $\ref{lst:ipol4ord}$
  const auto u    = order4interpolation(_c2f_u,    y);
  const auto fneq = order4interpolation(_c2f_fneq, y);

  const T uSqr = u*u;

  const auto finePos = this->getFineLatticeR(1+2*y);
  Cell<T,DESCRIPTOR> fineCell;
  fineLattice.get(finePos, fineCell);

  for (int iPop=0; iPop < DESCRIPTOR<T>::q; ++iPop) {
    fineCell[iPop] = lbHelpers<T,DESCRIPTOR>::equilibrium(iPop, rho[0], u.data, uSqr)
                   + this->getScalingFactor() * fneq[iPop];
  }

  fineLattice.set(finePos, fineCell);
}
