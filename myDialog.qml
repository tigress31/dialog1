import QtQuick 2.0

import QtQuick.Controls 2.4

ApplicationWindow {
    id: simpledialog
    title: "simple dialog"
    width: 1600
    height: 900
    visible: flase
    contentItem:
        Item {
        id:empty1
        width:1600
        height: 30
    }
    Item {
        id:empty2
        width:

    }

    Rectangle{
        id: info
        width: 1280
        height: 720
        Rectangle {
            id: header
            width: 1180
            height: 130
            anchors.left: emptyleft.right
            color: "orange"
            Item {
                id: timepart
                width: 590
                height: 70
                anchors.left: placepart.right
                Text {
                    text: "任务时间" + "2020年05月15日"
                    font.pointSize: 28
                }
            }
            Item {
                id: placepart
                width: 590
                height: 70
                Text {
                    anchors.fill: placepart
                    text: "地点:" + "日月湖"
                    font.pointSize: 36
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }

        Rectangle {
            id: emptyup
            width: 1180
            height: 20
            anchors.top: header.bottom
            anchors.left: emptyleft.right
            //                color: "blue"
        }
        Rectangle {
            id: emptyleft
            width: 50
            height: 720
            //                color: "blue"
        }
        Rectangle {
            id: emptyright
            width: 50
            height: 720
            anchors.left: header.right
            //                color: "blue"
        }
        Item{
            id: scrollview
            width: 1180
            height: 570
            anchors.top: emptyup.bottom
            anchors.left: emptyleft.right
            Rectangle {
                id: evaluatepart
                width: 1180
                height: 540
                Grid {
                    columns: 2
                    columnSpacing: 50
                    rowSpacing: 15

                    Rectangle {
                        id: evaluate_pm25
                        width: 565
                        height: 180
                        color: "green"
                        Item {
                            id: title_pm25
                            width: 70
                            height: 50
                            Text {
                                text: "PM2.5"
                                font.pointSize: 18
                            }
                        }
                        Item {
                            id: average_pm25
                            width: 70
                            height: 50
                            Text {
                                text:"平均值 μg/m3" + "1" + ""
                            }
                        }
                    }
                    Rectangle {
                        id: evaluate_pm10
                        width: 565
                        height: 180
                        color: "green"
                    }
                    Rectangle {
                        id: evaluate_co
                        width: 565
                        height: 180
                        color: "green"
                    }
                    Rectangle {
                        id: evaluate_so2
                        width: 565
                        height: 180
                        color: "green"
                    }
                    Rectangle {
                        id: evaluate_no2
                        width: 565
                        height: 180
                        color: "blue"
                    }
                    Rectangle {
                        id: evaluate_o3
                        width: 565
                        height: 180
                        color: "green"
                    }
                }
            }
        }
    }
}

