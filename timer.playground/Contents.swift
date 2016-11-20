import Foundation

class MyClass {
    
    func startTimer() {
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: "onTimer:", userInfo: nil, repeats: true)
    }
    
    @objc func onTimer(timer:Timer!) {
        print("Timer here")
    }
}

var anInstance = MyClass()

anInstance.startTimer()

CFRunLoopRun() // <-- HERE!