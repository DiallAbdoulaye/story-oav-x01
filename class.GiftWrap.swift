class GiftWrap : Packaging {
    var type: String {
        get {
            return String(describing: GiftWrap.self)
        }
    }
}