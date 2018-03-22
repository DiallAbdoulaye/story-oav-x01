class Box : Packaging {
    var type: String {
        get {
            return String(describing: Box.self)
        }
    }
}
