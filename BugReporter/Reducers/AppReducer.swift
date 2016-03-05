import Foundation
import ReSwift

struct AppReducer: Reducer {
    func handleAction(action: Action, state: AppState?) -> AppState {
        return AppState(
            reportTarget: ReportTargetReducer().handleAction(action, state: state?.reportTarget)
        )
    }
}
