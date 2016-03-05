import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    @IBOutlet weak var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        App.mainStore.subscribe(self)
    }

    func newState(state: AppState) {
        countLabel.text = "Count: \(state.reportTarget.bugCount)"
    }

    @IBAction func didTapCountUpButton(sender: UIButton) {
        App.mainStore.dispatch(BugCountUpAction())
    }
}
