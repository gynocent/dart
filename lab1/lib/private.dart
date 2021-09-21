class PrivateClass {
      int _val = 0;

      int get val => _val;
      set val(int v) => _val = (v < 0) ? _val : v;

      PrivateClass.fromVal(int val) : _val = val;
    }