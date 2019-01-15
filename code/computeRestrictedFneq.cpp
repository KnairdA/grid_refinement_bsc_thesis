template <typename T, template<typename> class DESCRIPTOR>
void computeRestrictedFneq(const SuperLattice2D<T,DESCRIPTOR>& lattice,
                           Vector<int,3> latticeR,
                           T restrictedFneq[DESCRIPTOR<T>::q])
{
  for (int iPop=0; iPop < DESCRIPTOR<T>::q; ++iPop) {
    const auto neighbor = latticeR
                        + {0, DESCRIPTOR<T>::c[iPop][0], DESCRIPTOR<T>::c[iPop][1]};
    Cell<T,DESCRIPTOR> cell;
    lattice.get(neighbor, cell);

    T fNeq[DESCRIPTOR<T>::q] {};
    lbHelpers<T,DESCRIPTOR>::computeFneq(cell, fNeq);

    for (int jPop=0; jPop < DESCRIPTOR<T>::q; ++jPop) {
      restrictedFneq[jPop] += fNeq[jPop];
    }
  }

  for (int iPop=0; iPop < DESCRIPTOR<T>::q; ++iPop) {
    restrictedFneq[iPop] /= DESCRIPTOR<T>::q;
  }
}
