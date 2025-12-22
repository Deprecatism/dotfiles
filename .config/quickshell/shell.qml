import QtQuick
import Quickshell
import Quickshell.Services.Mpris
import Quickshell.Widgets

Scope {
    required property var modelData
    readonly property var players: Mpris.players.values
    readonly property MprisPlayer active_player: players.find((p) => {
        return p.identity.toLowerCase() === "spotify";
    })
    readonly property bool is_active: !(active_player === undefined || active_player === null)

    Spotify {
        player: active_player
    }

}
