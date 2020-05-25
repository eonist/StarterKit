import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   lazy var window: UIWindow? = createWindow()
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      _ = window
      createLoginVC()
      return true
   }
}
extension AppDelegate {
   func createWindow() -> UIWindow {
      let win = UIWindow(frame: UIScreen.main.bounds)
      let nc = createNC()
      win.rootViewController = nc
      win.makeKeyAndVisible() // Important since we have no Main storyboard anymore
      return win
   }
   /**
    * - Note: you can also do: self.viewControllers = [vc]
    */
   func createNC() -> MasterNC{
      let nc = MasterNC()
      let masterVC = MasterVC()
      nc.pushViewController(masterVC, animated: false)
      return nc
   }
   /**
    * LoginVC
    * - Note: ref: https://stackoverflow.com/questions/28929424/present-viewcontroller-on-top-of-other-programmatically
    * - Fixme: ⚠️️  Make a more elegant solution for  presentedViewController, maybe with a dedicated master controller etc?
    */
   func createLoginVC() {
      let vc = OverlayVC()
      vc.modalPresentationStyle = .overCurrentContext
      let parentVC = window?.rootViewController?.presentedViewController ?? window?.rootViewController
      parentVC?.present(vc, animated: false, completion: nil)
   }
}

