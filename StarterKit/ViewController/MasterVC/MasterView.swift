import UIKit

class MasterView: UIView {
   override init(frame: CGRect) {
      super.init(frame: frame)
      let btn = createButton()
      btn.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Event
 */
extension MasterView {
   @objc func buttonTouched(sender:UIButton) {
      Swift.print("It Works!!!")
      let vc: UIViewController = DetailVC()
      (self.window?.rootViewController as? UINavigationController)?.pushViewController(vc, animated: true)
   }
}
