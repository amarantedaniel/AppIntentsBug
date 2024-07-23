import AppIntents
import SwiftUI

struct MyIntent: AppIntent {
    static var title: LocalizedStringResource = "MyIntent"

    func perform() async throws -> some IntentResult & ProvidesDialog & ShowsSnippetView {
        return .result(
            dialog: .init(stringLiteral: "My Title"),
            view: VStack {
                HStack {
                    Image("iphone_dog_1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("universal_dog_1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        )
    }
}
