import QtQuick 2.12
import QtQuick.Window 2.12

// X/Y Axis using drag

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: myShape
        width: 100
        height: 100
        color: "orange"

        function update() {
            console.log(x + " x " + y)
            label.text = Math.round(x) + " x " + Math.round(y)
        }

        //anchors.centerIn: parent

        x: 100
        y: 100

        Component.onCompleted: update()
        onXChanged: update()
        onYChanged: update()

        Text {
            id: label
            text: qsTr("text")
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: parent
            drag.target: parent
        }
    }

}
