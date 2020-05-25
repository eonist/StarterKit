import UIKit
/**
 * Create
 */
extension UIView {
   /**
    * Button
    */
   func createButton() -> UIButton {
      let btn: UIButton = UIButton(type: .system)
      btn.backgroundColor = .gray
      btn.setTitle("Button", for: .normal)
      btn.setTitleColor(.black, for: .normal)
      btn.titleLabel?.textAlignment = .center
      btn.titleLabel?.font =  .systemFont(ofSize: 12)
      btn.frame = CGRect(x:0, y:0, width:100, height:50)
      self.addSubview(btn)
      return btn
   }
}
import UIKit
/**
 * Controller related
 */
extension UIView {
   /**
    * Returns parent viewController
    * ## Examples:
    * self.parentViewController?.view.backgroundColor = .green
    */
   public var parentViewController: UIViewController? {
      var parentResponder: UIResponder? = self
      while parentResponder != nil {
         parentResponder = parentResponder!.next
         if let viewController = parentResponder as? UIViewController {
            return viewController
         }
      }
      return nil
   }
}
