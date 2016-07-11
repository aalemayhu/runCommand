import Foundation

struct runCommand {
    // http://stackoverflow.com/questions/26971240/how-do-i-run-an-terminal-command-in-a-swift-script-e-g-xcodebuild
    static func shell(args: String..., currentDirectoryPath: String) -> Int32 {

        let task = Task()
        task.launchPath = "/usr/bin/env"
        task.currentDirectoryPath = currentDirectoryPath
        task.arguments = args
        task.launch()
        task.waitUntilExit()
        return task.terminationStatus
    }
}
