import Qlift


class NewGameDialog: UI_NewGameDialog {
    init(parent: QWidget? = nil) {
        super.init(parent: parent, flags: .Sheet)
        self.comboBoxDefaultModes.connectCurrentIndexChanged(to: self.checkNewMode)
        if let parentWidget = parent {
            self.move(to: parentWidget.window.frameGeometry.topLeft + parentWidget.window.rect.center - self.rect.center)
        }
    }

    func checkNewMode(_ newMode: Int32) {
        switch newMode {
        // Beginner.
        case 0:
            self.spinBoxRows.enabled = false
            self.spinBoxRows.value = 9
            self.spinBoxColumns.enabled = false
            self.spinBoxColumns.value = 9
            self.spinBoxMines.enabled = false
            self.spinBoxMines.value = 10
        // Intermediate.
        case 1:
            self.spinBoxRows.enabled = false
            self.spinBoxRows.value = 16
            self.spinBoxColumns.enabled = false
            self.spinBoxColumns.value = 16
            self.spinBoxMines.enabled = false
            self.spinBoxMines.value = 40
        // Expert.
        case 2:
            self.spinBoxRows.enabled = false
            self.spinBoxRows.value = 30
            self.spinBoxColumns.enabled = false
            self.spinBoxColumns.value = 16
            self.spinBoxMines.enabled = false
            self.spinBoxMines.value = 99
        // Custom.
        case 4:
            self.spinBoxRows.enabled = true
            self.spinBoxColumns.enabled = true
            self.spinBoxMines.enabled = true
        default:
            fatalError("Unknown game mode.")
        }
    }
}
