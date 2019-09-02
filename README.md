# FileBrowser
文件浏览器

基本用法
let homeDir:String = NSHomeDirectory()
print("沙盒地址---\(homeDir)")
let fileBrowser = FileBrowser(initialPath: URL(fileURLWithPath: homeDir))
//        let fileBrowser = FileBrowser()
 present(fileBrowser, animated: true, completion: nil)
 
 
