import Foundation
import Qlift

#if os(Linux)
srand(UInt32(time(nil)))
#endif

let application = QApplication()
let mainWindow = MainWindow()
mainWindow.show()
_ = application.exec()
