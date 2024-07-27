import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
    var flutterEngine = FlutterEngine(name: "menuBarIcon",project: nil)
    var statusBar: StatusBarController?
    var popover = NSPopover.init()
    
    override init() {
        popover.behavior = NSPopover.Behavior.transient
        flutterEngine.run(withEntrypoint:"menuBarButtonIconWindow")
    }
    override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication)
    -> Bool {
        return false
    }
    override func applicationDidFinishLaunching(_ aNotification: Notification){
        RegisterGeneratedPlugins(registry: flutterEngine)
        let controller: FlutterViewController = mainFlutterWindow?.contentViewController as! FlutterViewController
        popover.contentSize = NSSize(width: 520, height: 400)
        popover.contentViewController = controller
        statusBar = StatusBarController.init(popover,flutterEngine: flutterEngine)
        mainFlutterWindow?.close()
        super.applicationDidFinishLaunching(aNotification)
    }
}
