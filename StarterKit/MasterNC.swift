import UIKit

class MasterNC: UINavigationController {
   override var prefersStatusBarHidden: Bool { true }
   /**
    * Init
    * - Note: you can also do: self.viewControllers = [vc]
    */
   init(){
      super.init(nibName: nil, bundle: nil)
      // - Fixme: ⚠️️ figure out how to not init navbar
      self.navigationBar.isHidden = true // Swift 5
      let vc = MasterVC()
      self.pushViewController(vc, animated: false)
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}

