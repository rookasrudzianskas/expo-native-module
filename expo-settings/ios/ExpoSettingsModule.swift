import ExpoModulesCore

public class ExpoSettingsModule: Module {
  public func definition() -> ModuleDefinition {
    Name("ExpoSettings")

    Function("setTheme") { (theme: String) -> Void in
      UserDefaults.standard.set(theme, forKey:"theme")
    }

    Function("getTheme") { () -> String in
      UserDefaults.standard.string(forKey: "theme") ?? "system"
    }
  }
}
