import UIKit

class MasterVC: UIViewController {
   override var prefersStatusBarHidden: Bool { true }
   override func viewDidLoad() {
      super.viewDidLoad()
      self.view = MasterView()
      self.view.backgroundColor = .purple/*Debug*/
   }
}
