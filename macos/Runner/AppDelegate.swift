import Cocoa
import FlutterMacOS

@main
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
        statusBar = StatusBarController.init(popover,flutterEngine: flutterEngine, mainEngine: controller.engine)
        mainFlutterWindow?.close()
        setupMessageChannels()
        super.applicationDidFinishLaunching(aNotification)
    }
    
    func setupMessageChannels() {
        let menuBarChannelName = "com.pinnaclelabs/menu_bar_state"
        let controller: FlutterViewController = mainFlutterWindow?.contentViewController as! FlutterViewController
        
        let menuBarStateChannel =
        FlutterBasicMessageChannel(name: menuBarChannelName, binaryMessenger: flutterEngine.binaryMessenger, codec: FlutterStandardMessageCodec.sharedInstance())
        FlutterBasicMessageChannel(name: menuBarChannelName, binaryMessenger: controller.engine.binaryMessenger, codec: FlutterStandardMessageCodec.sharedInstance()).setMessageHandler{
            (message: Any?, reply: FlutterReply) -> Void in
            menuBarStateChannel.sendMessage(message)
            reply(true)
        }
    }
}
