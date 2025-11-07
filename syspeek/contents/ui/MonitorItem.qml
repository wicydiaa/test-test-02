import QtQuick 6.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 6.5
import org.kde.kirigami 2.20 as Kirigami
import QtGraphicalEffects 1.15

Item {
    property alias icon: iconImage.source
    property alias label: labelText.text
    property alias color: labelText.color

    implicitWidth: parent
    implicitHeight: parent

    Row {
        spacing: Kirigami.Units.smallSpacing
        anchors.centerIn: parent

        ColorOverlay {
             anchors.fill: iconImage
             source: Image {
                 id: iconImage

                 width: Kirigami.Units.iconSizes.small
                 height: Kirigami.Units.iconSizes.small
                 fillMode: Image.PreserveAspectFit
             }
             color: labelText.color
         }

        Text {
            id: labelText

            verticalAlignment: Text.AlignVCenter
            color: color
            font.pixelSize: Kirigami.Units.gridUnit * 0.7
            font.bold: true
        }

    }

}
