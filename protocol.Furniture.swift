protocol Furniture {
    func put(_ obj: Object) -> Bool
    func take() -> Object?
}