import Cocoa

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier)*2.5)"

let minValue = UInt64.min
let maxValue = UInt64.max

let cannotBeNegative: UInt8
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let minutes = 60
let minuteInterval = 5
//for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
//    print(tickMark)
//}

let http404Error = (404,"Not Found")






let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point

if assumedString != nil{
    print(assumedString!)
}
