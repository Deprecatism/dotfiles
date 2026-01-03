import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import Quickshell.Services.SystemTray
import QtQuick.Controls

PanelWindow {
    id: root

    anchors.top: true
    anchors.left: true
    anchors.right: true
    implicitHeight: 45
    color: "transparent"

    RowLayout {
        anchors.fill: parent
        anchors.margins: 8
        spacing: 8

        Repeater {
            model: SystemTray.items
            Rectangle {
                width: 32
                height: 32 
                Button {
                    anchors.fill: parent
                    Image {
                        anchors.fill: parent
                        source: modelData.icon
                    }
                    text: modelData.title
                    onClicked: modelData.activate()
                }
            }
        }
    }
}
