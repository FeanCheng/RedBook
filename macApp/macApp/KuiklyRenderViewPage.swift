import Foundation
import SwiftUI
import OpenKuiklyIOSRender

struct KuiklyRenderViewPage: NSViewControllerRepresentable {
    typealias NSViewControllerType = NSViewController
    
    var pageName: String
    var data: [String: Any]
    
    init(pageName: String, data: [String: Any] = [:]) {
        self.pageName = pageName
        self.data = data
    }
    
    func makeNSViewController(context: Context) -> NSViewController {
        let vc = NSViewController()
        let delegator = KuiklyRenderViewControllerBaseDelegator(
            pageName: pageName,
            pageData: data,
            frameworkName: "shared"
        )
        objc_setAssociatedObject(vc, &AssociatedKeys.delegator, delegator, .OBJC_ASSOCIATION_RETAIN)
        if let renderView = delegator.renderView {
            vc.view = renderView
        }
        return vc
    }
    
    func updateNSViewController(_ nsViewController: NSViewController, context: Context) {
        // Kuikly handles updates internally through its rendering pipeline
    }
}

private struct AssociatedKeys {
    static var delegator: UInt8 = 0
}
