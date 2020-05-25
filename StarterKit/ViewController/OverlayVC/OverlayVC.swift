import UIKit

class OverlayVC: UIViewController {
   override var prefersStatusBarHidden: Bool { true }
   override func viewDidLoad() {
      super.viewDidLoad()
      self.view = OverlayView()
      self.view.backgroundColor = UIColor.yellow.withAlphaComponent(1.0)/*Debug*/
   }
}
