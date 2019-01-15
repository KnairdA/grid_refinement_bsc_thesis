template <typename T, template<typename> class DESCRIPTOR>
class FineCoupler2D : public Coupler2D<T,DESCRIPTOR> {
private:
  std::vector<Vector<T,1>>                _c2f_rho;
  std::vector<Vector<T,DESCRIPTOR<T>::d>> _c2f_u;
  std::vector<Vector<T,DESCRIPTOR<T>::q>> _c2f_fneq;

public:
  FineCoupler2D(Grid2D<T,DESCRIPTOR>& coarse, Grid2D<T,DESCRIPTOR>& fine,
                Vector<T,2> origin, Vector<T,2> extend);

  void store();
  void interpolate();
  void couple();
};
