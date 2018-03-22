class Pony: Toy {
    private static var _nb: Int = 0
    private let _id: Int

    var type: String {
      get {
        return String(describing: Pony.self)
      }
    }

    init() {
      Pony._nb += 1
      _id = Pony._nb
        print("""
        New pony [\(self._id)] singing -->
        Dou-double poney, j’fais izi money
        D’où tu m’connais ? Parle moi en billets violets
        Dou-double poney, j’fais izi money
      """)
    }

    func isMoved() {
      print("Daaaaamn!")
    }
}
