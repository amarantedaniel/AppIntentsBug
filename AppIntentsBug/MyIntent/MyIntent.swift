import AppIntents
import SwiftUI

struct MyIntent: AppIntent {
    static var title: LocalizedStringResource = "MyIntent"

    func perform() async throws -> some IntentResult & ProvidesDialog & ShowsSnippetView {
        return .result(
            dialog: .init(stringLiteral: "My Title"),
            view: VStack {
                Text("Blue")
                    .foregroundStyle(Color.blue)
                Text("Blue from assets")
                    .foregroundStyle(Color("blue-from-assets"))
            }
        )
    }
}
