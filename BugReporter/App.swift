import Foundation
import ReSwift

class App {
    static let mainStore = Store<AppState>(reducer: AppReducer(), state: nil)
}
