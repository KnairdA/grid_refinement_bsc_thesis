template <typename T, template<typename> class DESCRIPTOR>
class CoarseCoupler2D : public Coupler2D<T,DESCRIPTOR> {
public:
  CoarseCoupler2D(Grid2D<T,DESCRIPTOR>& coarse, Grid2D<T,DESCRIPTOR>& fine,
                  Vector<T,2> origin, Vector<T,2> extend);

  void couple();
};
