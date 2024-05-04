import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(BackswipePlugin)
public class BackswipePlugin: CAPPlugin {
    private let implementation = Backswipe()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    override public func load() {
        bridge?.webView?.allowsBackForwardNavigationGestures = true;
        bridge?.webView?.scrollView.showsHorizontalScrollIndicator = false;
        bridge?.webView?.scrollView.showsVerticalScrollIndicator = false;
    }
}
