
import Foundation

class QuizItemStore {
    
    var items: [QuizItem] = []
    static var shared = QuizItemStore()
    
    static var fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appending(component: "items.plist")
    
    
    private init(items: [QuizItem]) {
        self.items = items
    }
    
    private init() {}
    
    
    
    func save() {
        do {
            let encoder = PropertyListEncoder()
            let data: Data = try encoder.encode(items)
            try data.write(to: QuizItemStore.fileURL)
        } catch {
            print(error)
        }
    }
    
    @discardableResult
    private func lookBusy(for duration: TimeInterval) -> Double {
        var result = 0.0
        var stillBusy = true
        DispatchQueue.global().asyncAfter(deadline: .now() + duration) { stillBusy = false }
        while stillBusy {
            result = sin(sin(sin(sin(sin(sin(sin(Double.random(in: 0...1))))))))
        }
        return result
    }
    
    
    func load() {
        do {
            let decoder = PropertyListDecoder()
            let data = try Data(contentsOf: QuizItemStore.fileURL)
            items = try decoder.decode([QuizItem].self, from: data)
        } catch {
            print(error)
        }
    }

}

#if DEBUG
extension QuizItemStore {
    convenience init(debugItems: [QuizItem]) {
        self.init(items: debugItems)
    }
}
#endif
