func fact(_ to: Int) -> Int {
    if to < 2 {
        return to
    } else {
        return to * fact(to-1)
    }
}

fact(10)

let opt_int: Int? = 42
if case .some(let x) = opt_int {
    print(x)
}

enum e { case left, right }
let x: e? = nil
switch x {
case .left:
    print("hey left")
case _:
    print("other")
}

let point = (0, 0)

func ~= (pattern: String, value: Int) -> Bool {
    return pattern == "\(value)"
}
switch point {
case ("0", "0"):
    print("(0, 0) is at the origin.")
default:
    print("The point is at (\(point.0), \(point.1)).")
}

struct Point {
    var x, y: Int
    init(_ x_arg: Int, _ y_arg: Int) {
        x = x_arg
        y = y_arg
    }
    mutating func move() {
        x += 1
        y += 1
    }
}

var p = Point(10, 20)
p.move()
p.x = 200
print(p.x, p.y, p)

struct PrivPoint {
    let x: Int
    var y: Int
    private var z: Int
    var pub_z: Int {
        get { return z }
        set(z_arg) { z = z_arg }
    }
    init(_ y_arg: Int) {
        x = 10
        y = y_arg
        z = 1
    }
}

var pp = PrivPoint(10)
pp.pub_z = 100
print(pp.x, pp.y, pp.pub_z)

protocol Nyanko {
    var name: String { get set }
    func meow() -> String
}

extension Nyanko {
    func meow() -> String {
        return "default meow"
    }
}

struct Pochi: Nyanko {
    var name: String

    func meow() -> String {
        return "meow"
    }
}

struct DameNyanko: Nyanko {
    var name: String
}

var pochi = Pochi(name: "nyaa")
print(pochi.meow())
print(pochi.name)

var dame_nyanko = DameNyanko(name: "dame")
print(dame_nyanko.meow())
print(dame_nyanko.name)

struct Anko {
    var sweetness: Int
    var umami: Int {
        return sweetness * sweetness
    }
}
var an = Anko(sweetness: 10)
print(an.umami)
