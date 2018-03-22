print("Running step.1:")

var pony: Pony = Pony()
var horse: Pony = Pony()
var kyros: OneArmedSoldier = OneArmedSoldier(name: "Kyros", weapon: .IRON_BAR)

print(pony.type)

horse.isMoved()
pony.isMoved()
kyros.isMoved()
