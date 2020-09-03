import QtQuick 2.15
import QtQuick.Window 2.15

Rectangle {
    id: page
    visible: true
    width: 640
    height: 480
    state: "State1"

    Image {
        id: icon
        x: 10
        y: 20
        width: 55
        height: 41
        fillMode: Image.PreserveAspectFit
        source: "qt-logo.png"
    }

    Rectangle {
        id: topLeftRect
        width: 55
        height: 41
        color: "#00000000"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: "#808080"

        MouseArea {
            id: mouseArea
            anchors.fill: parent

            Connections {
                target: mouseArea
                function onClicked() { page.state = "State1" }
            }
        }
    }

    Rectangle {
        id: middleRightRect
        width: 55
        height: 41
        color: "#00000000"
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        border.color: "#808080"
        MouseArea {
            id: mouseArea1
            anchors.fill: parent

            Connections {
                target: mouseArea1
                function onClicked() { page.state = "State2" }
            }
        }
    }

    Rectangle {
        id: bottomLeftRect
        width: 55
        height: 41
        color: "#00000000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        border.color: "#808080"
        MouseArea {
            id: mouseArea2
            anchors.fill: parent

            Connections {
                target: mouseArea2
                function onClicked() { page.state = "State3" }
            }
        }
        anchors.left: parent.left
        anchors.leftMargin: 10
    }
    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: icon
                x: 10
                y: 20
            }
        },
        State {
            name: "State2"

            PropertyChanges {
                target: icon
                x: 575
                y: 220
            }
        },
        State {
            name: "State3"

            PropertyChanges {
                target: icon
                x: 10
                y: 419
            }
        }
    ]
    transitions: [
        Transition {
            id: toState1
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: icon
                        property: "x"
                        easing.bezierCurve: [0.2,0.2,0.8,0.8,1,1]
                        duration: 152
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 52
                    }

                    PropertyAnimation {
                        target: icon
                        property: "y"
                        easing.bezierCurve: [0.2,0.2,0.8,0.8,1,1]
                        duration: 152
                    }
                }
            }
            to: "State1"
            from: "State2,State3"
        },
        Transition {
            id: toState2
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: icon
                        property: "x"
                        easing.bezierCurve: [0.233,0.161,0.264,0.997,0.393,0.997,0.522,0.997,0.555,0.752,0.61,0.75,0.664,0.748,0.736,1,0.775,1,0.814,0.999,0.861,0.901,0.888,0.901,0.916,0.901,0.923,0.995,1,1]
                        duration: 951
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: icon
                        property: "y"
                        easing.bezierCurve: [0.233,0.161,0.264,0.997,0.393,0.997,0.522,0.997,0.555,0.752,0.61,0.75,0.664,0.748,0.736,1,0.775,1,0.814,0.999,0.861,0.901,0.888,0.901,0.916,0.901,0.923,0.995,1,1]
                        duration: 951
                    }
                }
            }
            to: "State2"
            from: "State1,State3"
        },
        Transition {
            id: toState3
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: icon
                        property: "x"
                        easing.bezierCurve: [0.25,0.46,0.45,0.94,1,1]
                        duration: 2000
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: icon
                        property: "y"
                        easing.bezierCurve: [0.25,0.46,0.45,0.94,1,1]
                        duration: 2000
                    }
                }
            }
            to: "State3"
            from: "State1,State2"
        }
    ]
}
