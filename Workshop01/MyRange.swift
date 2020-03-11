class MyRange {
    var input: String

    init(input: String) {
        self.input = input
    }

    func isInclude() -> Bool {
        return self.input.hasPrefix("[")
    }

    func getStart() -> Int {
        let sub = Array(self.input)[1]
        if isInclude() {
            return Int(String(sub)) ?? -1
        }
        let result = Int(String(sub)) ?? -1
        return result + 1
    }
}
