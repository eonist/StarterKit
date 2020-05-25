import UIKit

class DetailVC: UIViewController {
   override var prefersStatusBarHidden: Bool { true }
   override func viewDidLoad() {
      super.viewDidLoad()
      self.view = DetailView()
      self.view.backgroundColor = .green/*Debug*/
   }
}
