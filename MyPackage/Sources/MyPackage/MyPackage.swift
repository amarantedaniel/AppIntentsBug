import SwiftUI

public func textFromPackage() -> String {
    "hello from package"
}

public func imageFromPackage() -> Image {
    Image("dog2", bundle: Bundle.module)
}
