import AppIntents
import SwiftUI
import MyPackage

struct MyIntent: AppIntent {
    static var title: LocalizedStringResource = "MyIntent"

    func perform() async throws -> some IntentResult & ProvidesDialog & ShowsSnippetView {
        return .result(
            dialog: .init(stringLiteral: "My Title"),
            view: VStack {
                Text(textFromPackage())
                HStack {
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    imageFromPackage()
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        )
    }
}
