class ConveyorBelt: Furniture {

    private var current: Object? = nil
    var isBusy: Bool = false

    init() {}

    func put(_ obj: Object) -> Bool {
        if !self.isBusy {
            self.current = obj
            self.isBusy = true
            return true
        } else {
            print("Sorry the conveyor is busy.")
            return false
        }
    }

    func take() -> Object? {
        if self.isBusy {
            let obj: Object = self.current!
            self.current = nil
            self.isBusy = false
            return obj
        } else {
            print("Sorry, there is no object.")
            return nil
        }
    }

    func fetch() {
        let classes: [String] = [
                                    "Pony",
                                    "OneArmedSoldier",
                                    "Box",
                                    "GiftWrap"
                                ]
    }
}





