
import Foundation

class SomeObject {
    weak var otherObject: SomeObject?
    
    func doWork() {
        do {
            let area1 = try computeArea(length: 5, width: 5)
            let area2 = try computeArea(length: -5, width: 5)
        } catch {
            print("Error occurred: \(error)")
        }

    }
    
    func computeArea(length: Double, width: Double) throws -> Double {
        guard length > 0 else {
            throw ComputationError.invalidLength(length)
        }
        guard width > 0 else {
            throw ComputationError.invalidWidth(width)
        }
        
        return length * width
    }
}

extension SomeObject {
    
    enum ComputationError: Error {
        case invalidLength(Double)
        case invalidWidth(Double)
    }
    
}

