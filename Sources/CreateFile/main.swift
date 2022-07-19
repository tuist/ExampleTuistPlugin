import Foundation

let contentKey = "PLUGIN_FILE_CONTENT"
guard let content = ProcessInfo.processInfo.environment[contentKey] else {
    fatalError("Environment variable not found: '\(contentKey)'.")
}
try content.write(
    to: URL(fileURLWithPath: "plugin-file.txt"),
    atomically: true,
    encoding: .utf8
)
print("File created with a plugin!")
