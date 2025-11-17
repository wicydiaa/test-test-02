import QtQuick 6.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 6.5
import org.kde.kirigami 2.20 as Kirigami
import org.kde.plasma.core as PlasmaCore

Item {
    id: root

    property alias cfg_textColor: colorButton.color

    Kirigami.FormLayout {
        anchors.fill: parent

        Kirigami.ActionTextField {
            id: colorButton
            label: "Text Color"
            iconName: "color-picker"
            Kirigami.ColorButton {
                anchors.fill: parent
                color: cfg_textColor
                onAccepted: (color) => cfg_textColor = color
            }
        }
    }
}
