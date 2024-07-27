import Cocoa
import FlutterMacOS

class StatusBarFlutterView: NSView {
    private var flutterViewController: FlutterViewController

    init(flutterEngine: FlutterEngine) {
        flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        super.init(frame: NSRect(x: 0, y: 0, width: 28, height: 28))
        let flutterView = flutterViewController.view
        flutterViewController.backgroundColor = .clear
        addSubview(flutterView)
        flutterView.frame = bounds
        flutterView.autoresizingMask = [.width, .height]
    }
    
    override func mouseDown(with event: NSEvent) {
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
