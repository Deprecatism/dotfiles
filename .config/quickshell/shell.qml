import QtQuick
import Quickshell
import Quickshell.Services.Mpris
import Quickshell.Widgets

Variants {
    model: Quickshell.screens

    delegate: Component {
        PanelWindow {
          color: '#58000000'
            required property var modelData

            readonly property list<MprisPlayer> players: Mpris.players.values

            readonly property MprisPlayer active_player: players.find((p) => {
                return p.identity.toLowerCase() === "spotify";
            })

            readonly property bool is_active: active_player === undefined

            aboveWindows: false
            implicitHeight: modelData.height / 3
            implicitWidth: modelData.width / 2.25

            anchors {
                bottom: true
                left: true
            }

            margins {
                left: modelData.height / 32
                bottom: modelData.height / 32
            }

            Rectangle {
              x: modelData.height / 32
              y: modelData.height / 32
                ClippingWrapperRectangle {
                    width: modelData.height / 8
                    height: modelData.height / 8
                    radius: width / 2
                    clip: true

                    Image {
                        asynchronous: true
                        anchors.fill: parent
                        source: active_player.trackArtUrl
                        fillMode: Image.PreserveAspectCrop
                    }

                }

            }

        }

    }

}
