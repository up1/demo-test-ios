class Hello {
    var name: String

    init(name: String) {
        self.name = name
    }

    func sayHi() -> String {
        "Hi, \(self.name)"
    }

    func sayHi2() -> String {
        "Hi, \(self.name)"
    }
}
