class Packaging: Object {
    var _isOpen: Bool

    var isOpen: Bool{
      get {
        return _isOpen
      }
      set(o){
        _isOpen = o
      }
    }

    var _toy: Toy?

    var toy: Toy?{
      get {
        return _toy
      }
      set(t){
        _toy = t
      }
    }

    init() {
      self._isOpen = false
      self._toy = nil
    }

    func open() {
        _isOpen = true
    }
    func insert(_ toy: Toy) {
        _toy = toy
        _isOpen = false
    }
}
