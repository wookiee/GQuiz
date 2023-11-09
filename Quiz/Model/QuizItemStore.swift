
import Foundation

class QuizItemStore {
    
    var items: [QuizItem]
    
    static var shared = QuizItemStore()
    
    private init(items: [QuizItem]) {
        self.items = items
    }
    
    private init() {
        self.items = [
            QuizItem(question: "What's 7+7?",
                     answer: "14"),
            QuizItem(question: "What is cognac made from?",
                     answer: "Grapes"),
            QuizItem(question: "What is the speed of light? Are you sure? Are you really sure?",
                     answer: "186k miles/sec")
        ]
    }

}

#if DEBUG
extension QuizItemStore {
    convenience init(debugItems: [QuizItem]) {
        self.init(items: debugItems)
    }
}
#endif
