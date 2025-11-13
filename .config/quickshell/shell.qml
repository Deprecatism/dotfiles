import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Services.SystemTray

Scope {
    id: root

    property string time

    Variants {
        model: Quickshell.screens

        delegate: Component {
            PanelWindow {
                required property var modelData

                screen: modelData
                implicitHeight: 30

                anchors {
                    top: true
                    left: true
                    right: true
                }

                Repeater {
                    model: SystemTray.items.values.filter((i) => {
                        return (i.category == Category.Hardware || i.category == Category.ApplicationStatus);
                    })

                    delegate: Item {
                        Rectangle {
                            anchors.fill: parent
                            width: 10

                            Text {
                                text: modelData.title
                            }

                        }

                    }

                }

            }

        }

    }

    Process {
        id: dateProc

        command: ["date", "+%H : %M"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.time = this.text
        }

    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: dateProc.running = true
    }

}
