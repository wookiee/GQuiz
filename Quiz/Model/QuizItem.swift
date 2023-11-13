
struct QuizItem: Codable {
    let question: String
    let answer: String
}

#if DEBUG
extension QuizItem {
    static var sampleItems: [QuizItem] {[
        QuizItem(question: "What's 7+7?",
                 answer: "14"),
        QuizItem(question: "What is cognac made from?",
                 answer: "Grapes"),
        QuizItem(question: "What is the speed of light? Are you sure? Are you really sure?",
                 answer: "186k miles/sec")
    ]}
}
#endif
