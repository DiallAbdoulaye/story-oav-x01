struct Stack<T> {
    private var content: [T] = []

    mutating func push(_ val: T) {
        content.append(val)
    }

    mutating func pop() -> T? {
        return content.popLast()
    }

    var isEmpty: Bool { 
        return content.isEmpty
    }

    var count: Int {
        return content.count
    }
}