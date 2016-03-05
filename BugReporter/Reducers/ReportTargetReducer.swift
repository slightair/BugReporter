import Foundation
import ReSwift

struct ReportTargetReducer: Reducer {
    typealias ReducerStateType = ReportTarget

    func handleAction(action: Action, state: ReducerStateType?) -> ReducerStateType {
        let state = state ?? ReportTarget()

        switch action {
        case _ as BugCountUpAction:
            return incrementBugCount(state)
        default:
            return state
        }
    }

    func incrementBugCount(state: ReportTarget) -> ReportTarget {
        return ReportTarget(bugCount: state.bugCount + 1)
    }
}
