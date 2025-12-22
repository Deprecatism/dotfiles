import QtQuick
import Quickshell
import Quickshell.Services.Mpris
import Quickshell.Widgets

Scope {
    required property MprisPlayer player

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData

            screen: modelData
            color: "transparent"
            aboveWindows: false
            implicitWidth: modelData.width / 2.25
            implicitHeight: modelData.height / 3

            anchors {
                bottom: true
                left: true
            }

            margins {
                left: modelData.height / 32
                bottom: modelData.height / 32
            }

            Rectangle {
                implicitHeight: parent.height
                implicitWidth: parent.width
                radius: 30, 30, 30, 30

                ClippingWrapperRectangle {
                    width: parent.width
                    height: parent.height
                    radius: 30
                    clip: true
                    color: "#FFFFFF"

                    Image {
                        asynchronous: true
                        anchors.fill: parent
                        source: player.trackArtUrl
                        fillMode: Image.PreserveAspectCrop
                    }

                }

                Rectangle {
                    implicitHeight: parent.height
                    implicitWidth: parent.width
                    radius: 30, 30, 30, 30
                    color: '#d4000000'
                }

                ClippingWrapperRectangle {
                    y: parent.height / 16
                    x: parent.width / 16
                    width: modelData.height / 8
                    height: modelData.height / 8
                    radius: width / 2
                    clip: true

                    Image {
                        asynchronous: true
                        anchors.fill: parent
                        source: player.trackArtUrl
                        fillMode: Image.PreserveAspectCrop
                    }

                }

            }

            Text {
                text: is_active
            }

        }

    }

}
