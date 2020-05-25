import UIKit

class DetailView: UIView {
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
extension DetailView {
   @objc func buttonTouched(sender:UIButton) {
      self.parentViewController?.navigationController?.popViewController(animated: true)
   }
}
