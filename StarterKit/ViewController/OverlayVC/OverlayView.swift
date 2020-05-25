import UIKit

class OverlayView: UIView {
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
extension OverlayView {
   @objc func buttonTouched(sender:UIButton) {
      Swift.print("It Works!!!")

      UIView.animate(withDuration: 0.2, animations: { self.alpha = 0 }) {
         _ in self.parentViewController?.dismiss(animated: false)
      }
   }
}
