
// Declare protocol here
protocol ColorSwitchable {
    func switchColor(_: Color)
}

enum LightState {
    case on, off
}

enum Color {
    case rgb(Double, Double, Double, Double)
    case hsb(Double, Double, Double, Double)
}

class WifiLamp: ColorSwitchable {
    let state: LightState
    var color: Color
    
    init() {
        self.state = .on
        self.color = .rgb(0,0,0,0)
    }
    
    func switchColor(_ color: Color) {
        self.color = color
    }
}
