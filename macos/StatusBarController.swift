//
//  StatusBarController.swift
//  Runner
//
//  Created by Kishan on 27/07/24.
//

import AppKit
import Cocoa
import FlutterMacOS

class StatusBarController : PopOverAPI {
    private var statusBar: NSStatusBar
    private var statusItem: NSStatusItem
    private var popover: NSPopover
    private var menuBarAction: MenuBarActions
    
    init(_ popover: NSPopover, flutterEngine: FlutterEngine, mainEngine: FlutterEngine) {
        self.popover = popover
        statusBar = NSStatusBar.init()
        statusItem = statusBar.statusItem(withLength: 50.0)
        menuBarAction = MenuBarActions(binaryMessenger: mainEngine.binaryMessenger)
        PopOverAPISetup.setUp(binaryMessenger: flutterEngine.binaryMessenger, api: self)
  
        if let statusBarButton = statusItem.button {
            let flutterView = StatusBarFlutterView(flutterEngine: flutterEngine)
            statusBarButton.addSubview(flutterView)
            flutterView.frame = statusBarButton.bounds
            flutterView.autoresizingMask = [.width, .height]
            
            statusBarButton.title = "     "
            statusBarButton.action = #selector(togglePopover(sender:))
            statusBarButton.target = self
        }
    }
    
    func togglePopOver() throws -> Bool  {
        if let statusBarButton = statusItem.button {
            togglePopover(sender: statusBarButton)
        }
        return true
    }
    
    func toggleRunningTimer() throws -> Bool {
        menuBarAction.toggleRunningTimer { completion in
            
        }
        return true
    }
    
    @objc func togglePopover(sender: AnyObject) {
        if(popover.isShown) {
            hidePopover(sender)
        }
        else {
            showPopover(sender)
        }
    }
    
    func showPopover(_ sender: AnyObject) {
        if let statusBarButton = statusItem.button {
            popover.show(relativeTo: statusBarButton.bounds, of: statusBarButton, preferredEdge: NSRectEdge.maxY)
        }
    }
    
    func hidePopover(_ sender: AnyObject) {
        popover.performClose(sender)
    }
}
