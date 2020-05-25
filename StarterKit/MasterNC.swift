import UIKit

class MasterNC: UINavigationController {
   override var prefersStatusBarHidden: Bool { true }
   /**
    * Init
    * - Fixme: ⚠️️ figure out how to not init navbar
    */
   init(){
      super.init(nibName: nil, bundle: nil)
      
      self.navigationBar.isHidden = true // Swift 5
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}

