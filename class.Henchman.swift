class Henchman {
    var _nickname: String
    var nickname: String {
      get{
        return _nickname
      }
      set{
        _nickname = newValue
      }
    }
    init(nickname:String) {
      self._nickname = nickname
    }
    func pack(packaging: Packaging,toy:Toy) {
        guard packaging.isOpen || packaging is GiftWrap else {
          print("Sorry this package is not open")
          return
        }
        if (packaging.toy != nil) {
          print("Sorry this package already filled")
          return
        }
        packaging.insert(toy)
        print("Yeaaaah! Just packing the toy ~~ \(toy.type) ~~")
    }
    func unpack(packaging:Packaging) -> Toy? {
        if (packaging.isOpen || packaging.toy == nil){
          print("Sorry this package is already empty")
          return nil
        }
        let toy : Toy = packaging.toy!
        packaging.isOpen = false
        packaging.toy = nil
        print("Ooooooh! Just unpacking the toy ~~ \(toy.type) ~~")
        return toy
    }

    func put(furniture: Furniture, obj: Object) {
      let isSuccess: Bool = furniture.put(obj)
      if isSuccess {
        print("Well! I'm putting object ~~ \(type(of: obj)) ~~ on ~~ \(type(of: furniture)) ~~")
      }
    }

    func take(furniture: Furniture) {
      let takeObj: Object? = furniture.take()
      if takeObj != nil {
        print("Well! I'm taking object ~~ \(type(of: takeObj)) ~~ from ~~ \(type(of: furniture)) ~~")
      }      
    }
}
