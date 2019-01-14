template <typename T, template<typename> class DESCRIPTOR>
class Coupler2D {
protected:
  Grid2D<T,DESCRIPTOR>& _coarse;
  Grid2D<T,DESCRIPTOR>& _fine;

  const int  _coarseSize;
  const int  _fineSize;
  const bool _vertical;

  Vector<T,2> _physOrigin;

  const Vector<int,3>& getFineLatticeR(int y) const;
  const Vector<int,3>& getCoarseLatticeR(int y) const;

  T getScalingFactor() const;
  T getInvScalingFactor() const;

private:
  std::vector<Vector<int,3>> _coarseLatticeR;
  std::vector<Vector<int,3>> _fineLatticeR;

public:
  Coupler2D(Grid2D<T,DESCRIPTOR>& coarse, Grid2D<T,DESCRIPTOR>& fine,
            Vector<T,2> origin, Vector<T,2> extend);

};
