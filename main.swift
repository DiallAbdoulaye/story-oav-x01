print("Running step.1:")

var pony: Pony = Pony()
var horse: Pony = Pony()
var kyros: OneArmedSoldier = OneArmedSoldier(name: "Kyros", weapon: .IRON_BAR)

print(pony.type)

horse.isMoved()
pony.isMoved()
kyros.isMoved()
print("-->> Running step.02:")

var bellamy: Henchman = Henchman(nickname: "Bellamy")
var box: Packaging = Box()
print(box.isOpen)
print(bellamy.nickname)

bellamy.pack(packaging: box, toy: kyros)
box.open()
print("Is the box has a toy? - \(box.toy != nil)")
bellamy.pack(packaging: box, toy: kyros)
print("Is the box has a toy? - \(box.toy != nil)")

var paper: Packaging = GiftWrap()
bellamy.pack(packaging: paper, toy: pony)
bellamy.pack(packaging: paper, toy: pony)

var toy: Toy! = bellamy.unpack(packaging: paper)
print("Is the toy our pony? - \(toy as! Pony === pony)")
var r: Toy? = bellamy.unpack(packaging: paper)
print("Is the toy no more present? - \(r == nil)")

print("<<-- End step.02:\n")

// -- step.03
print("-->> Running step.03:")

var table: Table = Table()
var conveyor: ConveyorBelt = ConveyorBelt()

bellamy.put(furniture: table, obj: paper)
bellamy.put(furniture: table, obj: pony)
bellamy.put(furniture: table, obj: box)