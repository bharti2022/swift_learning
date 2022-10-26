enum Weather {
    case sunny
    case cloudy(coverage: Int)
    case windy(speed: Int)
    case rainy(chance: Int)
}
let london = Weather.cloudy(coverage: 90)
let gusty = Weather.windy(speed: 10)
let guaranteedRain = Weather.rainy(chance: 100)

print(london)

//raw values
enum Planets: String {
    case mercury = "mercury"
    case venus = "venus"
    case earth = "earth"
    case mars = "mars"
}
print(Planets.venus)