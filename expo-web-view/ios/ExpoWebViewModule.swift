import ExpoModulesCore

public class ExpoWebViewModule: Module {
  public func definition() -> ModuleDefinition {
    Name("ExpoWebView")

    View(ExpoWebView.self) {
      Events("onLoad")

      Prop("url") { (view, url: URL) in
        if view.webView.url != url {
          let urlRequest = URLRequest(url: url)
          view.webView.load(urlRequest)
        }
      }
    }
  }
}
