import QtQuick 2.9
import QtQuick.Window 2.2

import QtQuick.Controls 2.4
import QtQuick.Dialogs 1.2
import QtCharts 2.0



//Window {
//    id: mainview
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")

//    Button {
//        id: button
//        width: parent.width
//        text: "Qpen Dialog"
//        onClicked: {
//            simpledialog.visible = true
//        }
//    }

ApplicationWindow {
    id: simpledialog
    title: "simple dialog"
    width: 1600
    height: 900
    visible: true

    Item {
        id:empty1
        width: 1600
        height: 15
    }
    Item {
        id:empty2
        width: 30
        height: 885
        anchors.top: empty1.bottom
    }
    Item {
        id:empty3
        width: 30
        height: 885
        anchors.top: empty1.bottom
        anchors.right: empty1.right
    }

    Rectangle {
        id: mainviewer
        //        contentHeight: 870
        //        contentWidth: 1540
        width:1540
        height: 870
        //        clip: true
        //        focus: true
        anchors.top: empty1.bottom
        anchors.left: empty2.right
        Item {
            id: rec_bg
            width: 1540
            height: 900
            //            radius: 30
            //            color: "#939392"
            //            color: "#231815"
            //            opacity: 0.70
            ////////////////////////////////////////////////背景色
            Rectangle {
                id: backgroundcolor
                width: 1540
                height: 840

                //                radius: 30
                //                color: "#231815"
                anchors.top: rec_bg.top
                anchors.topMargin: 30
                color: "black"
                opacity: 0.5
            }
            ////////////////////////////////////////////////蓝色标题栏
            Rectangle {
                id:header_bg
                width: 1540
                height:100
                radius: 30
                //                opacity: 0.65
                color: "#6A98FF"
            }
            Item {
                id: header
                width: 1540
                height: 100
                anchors.top: header_bg.top
                //                color: "#0B308E"
                //                opacity: 0.65
                //                radius: 30
                //                color: "orange"
                Item {
                    id: timepart
                    width: 770
                    height: 100
                    anchors.left: placepart.right
                    Text {
                        anchors.fill: timepart
                        text: "任务时间" + "2020年05月15日"
                        font.pointSize: 28
                        //                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment:  Text.AlignVCenter
                    }
                }
                Item {
                    id: placepart
                    width: 770
                    height: 100
                    Text {
                        anchors.fill: placepart
                        text: "地点:" + "日月湖"
                        font.pointSize: 36
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
                Rectangle {
                    id: color_makeup
                    width: 1540
                    height: 20
                    anchors.bottom: header.bottom
                    color: "#6A98FF"

                }
            }

            Item {
                id: emptyup
                width: 1540
                height: 5
                anchors.top: header.bottom
                visible: false
                //                color: "blue"
            }
            Item {
                id: emptyleft
                width: 50
                height: 765
                anchors.top: emptyup.bottom
                anchors.left: emptyup.left
                visible: false
                //                color: "blue"
            }
            Item {
                id: emptyright
                width: 50
                height: 1360
                anchors.right: emptyup.right
                anchors.top: emptyup.bottom
                visible: false
                //                color: "blue"
            }
            ////////////////////////////////////////////////综合评价界面
            Item{
                id: main_evaluate
                width: 1440
                height: 750
                anchors.top: emptyup.bottom
                anchors.left: emptyleft.right
                Item {
                    id: evaluatepart
                    width: 1440
                    height: 750
                    Item {
                        id: zonghepingjia_text
                        width: 1440
                        height: 25
                        //                        Text {
                        //                            text: "综合评价："
                        //                            width: 1440
                        //                            height:50
                        //                            verticalAlignment: Text.AlignVCenter
                        //                            font.pointSize: 26
                        //                            color: "white"
                        //                        }
                    }
                    /////////////////////////////////////////////////////////////////综合评价内容
                    Row {
                        id: zonghepingjia_part
                        width: 1010
                        height: 140
                        spacing: 10
                        anchors.top: zonghepingjia_text.bottom
                        anchors.left: mainview_.left
                        //                        anchors.horizontalCenter: zonghepingjia_text.horizontalCenter
                        Rectangle {
                            id: aqi_part
                            width: 500
                            height: 140
                            color: "#DBDCDC"
                            border.color: "black"
                            //                            radius: 30
                            Text {
                                id: main_aqi
                                width: 200
                                height: 70
                                text: "AQI:"
                                font.family: "Times New Roman"
                                font.pointSize: 30
                                anchors.top: aqi_part.top
                                anchors.topMargin: 10
                                anchors.left: aqi_part.left
                                anchors.leftMargin: 30
                            }
                            Text {
                                id: main_aqi_value
                                width: 200
                                height: 120
                                anchors.left: main_aqi.right
                                anchors.top: main_aqi.top
                                text: "158"
                                font.pointSize: 80
                                //                                font.family: "Time New Roman"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Rectangle {
                            id: mainpolltant
                            width:860
                            height: 140
                            border.color: "black"
                            color: "#DBDCDC"
                            //                            radius: 30
                            Item {
                                id: airquality_text
                                width: 430
                                height: 140
                                Text {
                                    text: "空气质量:"
                                    width: 400
                                    height: 50
                                    font.pointSize: 18
                                    anchors.top: airquality_text.top
                                    anchors.topMargin: 20
                                    anchors.left: airquality_text.left
                                    anchors.leftMargin: 30
                                }
                                Text {
                                    text: "轻度污染"
                                    width: 380
                                    height: 70
                                    font.pointSize: 28
                                    anchors.bottom: airquality_text.bottom
                                    anchors.left: airquality_text.left
                                    anchors.leftMargin: 50
                                }
                            }
                            Item {
                                id: mainpolltant_text
                                width: 430
                                height:140
                                anchors.left: airquality_text.right
                                Text {
                                    text: "首要污染物"
                                    width: 400
                                    height: 50
                                    font.pointSize: 18
                                    anchors.top: mainpolltant_text.top
                                    anchors.topMargin: 20
                                    anchors.left: mainpolltant_text.left
                                    anchors.leftMargin: 30
                                }
                                ///////////////////首要污染物
                                Text {
                                    text: "NO<sub>2</sup>"
                                    font.pointSize: 28
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    width: 370
                                    height: 75
                                    anchors.bottom: mainpolltant_text.bottom
                                    anchors.left: mainpolltant_text.left
                                    anchors.leftMargin: 60
                                }
                            }
                        }
                    }
                    ////////////////////////////////////////////////////////////////污染物选择栏
                    Item {
                        id: choosebar
                        width: 1440
                        height: 70
                        anchors.top: zonghepingjia_part.bottom
                        Item {
                            id: gewuranwu_text
                            width: 300
                            height: 60
                            //                        Text {
                            //
                            //                            text: "各污染物评价："
                            //                            width: 300
                            //                            height: 60
                            //                            verticalAlignment: Text.AlignVCenter
                            //                            font.pointSize: 26
                            //                            color: "white"
                            //                        }
                        }
                        Row {
                            id: choosepolltant
                            width: 765
                            height: 50
                            anchors.right: choosebar.right
                            anchors.verticalCenter: choosebar.verticalCenter
                            spacing: 5
                            Rectangle{
                                id: button_main
                                width:100
                                height: 50
                                radius: 25
                                border.width: 6
                                border.color: "black"
                                Text {
                                    id: button_main_text
                                    text:"综合"
                                    font.pointSize: 16
                                    //                                    font.family: "黑体"
                                    //                                    color: "white"
                                    width:100
                                    height: 50
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                }
                                MouseArea{
                                    anchors.fill: button_main
                                    hoverEnabled: true
                                    onEntered: {
                                        button_main.color = "black"
                                        button_main_text.color = "white"
                                    }
                                    onExited:  {
                                        button_main.color = "white"
                                        button_main_text.color = "black"
                                    }

                                    onClicked: {
                                        detail_pm25.visible = false
                                        detail_pm10.visible = false
                                        detail_no2.visible = false
                                        detail_o3.visible = false
                                        detail_so2.visible = false
                                        detail_co.visible = false
                                        mainview_.visible = true

                                        button_main.border.width = 6
                                        button_pm25.border.width = 2
                                        button_pm10.border.width = 2
                                        button_no2.border.width = 2
                                        button_o3.border.width = 2
                                        button_so2.border.width = 2
                                        button_co.border.width = 2

                                        //                                        button_main_text.color = "white"
                                        //                                        button_pm25_text.color = "black"
                                        //                                        button_pm10_text.color = "black"
                                        //                                        button_no2_text.color = "black"
                                        //                                        button_o3_text.color = "black"
                                        //                                        button_so2_text.color = "black"
                                        //                                        button_co_text.color = "black"
                                    }
                                }
                                //                                   if (button_main.color === "white" && button_main_text.color === "black")
                            }
                            Rectangle{
                                id: button_pm25
                                width:100
                                height: 50
                                radius: 25
                                border.color: "black"
                                border.width: 2
                                Text {
                                    id: button_pm25_text
                                    text:"PM<sub>2.5</sub>"
                                    font.pointSize: 16
                                    textFormat: Text.RichText
                                    width:100
                                    height: 50
                                    font.family: "Times New Roman"
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                }
                                MouseArea{
                                    anchors.fill: button_pm25
                                    hoverEnabled: true
                                    onEntered: {
                                        button_pm25.color = "black"
                                        button_pm25_text.color = "white"
                                    }
                                    onExited:  {
                                        button_pm25.color = "white"
                                        button_pm25_text.color = "black"
                                    }

                                    onClicked: {
                                        detail_pm25.visible = true
                                        detail_pm10.visible = false
                                        detail_no2.visible = false
                                        detail_o3.visible = false
                                        detail_so2.visible = false
                                        detail_co.visible = false
                                        mainview_.visible = false

                                        button_main.border.width = 2
                                        button_pm25.border.width = 6
                                        button_pm10.border.width = 2
                                        button_no2.border.width = 2
                                        button_o3.border.width = 2
                                        button_so2.border.width = 2
                                        button_co.border.width = 2
                                    }
                                }
                            }
                            Rectangle{
                                id:button_pm10
                                width:100
                                height: 50
                                radius: 25
                                border.color: "black"
                                border.width: 2
                                Text {
                                    id: button_pm10_text
                                    text:"PM<sub>10</sub>"
                                    textFormat: Text.RichText
                                    font.pointSize: 16
                                    width:100
                                    height: 50
                                    font.family: "Times New Roman"
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                }
                                MouseArea{
                                    anchors.fill: button_pm10
                                    hoverEnabled: true
                                    onEntered: {
                                        button_pm10.color = "black"
                                        button_pm10_text.color = "white"
                                    }
                                    onExited:  {
                                        button_pm10.color = "white"
                                        button_pm10_text.color = "black"
                                    }

                                    onClicked: {
                                        detail_pm25.visible = false
                                        detail_pm10.visible = true
                                        detail_no2.visible = false
                                        detail_o3.visible = false
                                        detail_so2.visible = false
                                        detail_co.visible = false
                                        mainview_.visible = false

                                        button_main.border.width = 2
                                        button_pm25.border.width = 2
                                        button_pm10.border.width = 6
                                        button_no2.border.width = 2
                                        button_o3.border.width = 2
                                        button_so2.border.width = 2
                                        button_co.border.width = 2
                                    }
                                }
                            }
                            Rectangle{
                                id:button_no2
                                width:100
                                height: 50
                                radius: 25
                                border.color: "black"
                                border.width: 2
                                Text {
                                    id: button_no2_text
                                    text:"NO<sub>2</sub>"
                                    font.pointSize: 16
                                    textFormat: Text.RichText
                                    width:100
                                    height: 50
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                }
                                MouseArea{
                                    anchors.fill: button_no2
                                    hoverEnabled: true
                                    onEntered: {
                                        button_no2.color = "black"
                                        button_no2_text.color = "white"
                                    }
                                    onExited:  {
                                        button_no2.color = "white"
                                        button_no2_text.color = "black"
                                    }

                                    onClicked: {
                                        detail_pm25.visible = false
                                        detail_pm10.visible = false
                                        detail_no2.visible = true
                                        detail_o3.visible = false
                                        detail_so2.visible = false
                                        detail_co.visible = false
                                        mainview_.visible = false

                                        button_main.border.width = 2
                                        button_pm25.border.width = 2
                                        button_pm10.border.width = 2
                                        button_no2.border.width = 6
                                        button_o3.border.width = 2
                                        button_so2.border.width = 2
                                        button_co.border.width = 2
                                    }
                                }
                            }
                            Rectangle{
                                id:button_o3
                                width:100
                                height: 50
                                radius: 25
                                border.color: "black"
                                border.width: 2
                                Text {
                                    id: button_o3_text
                                    text:"O<sub>3</sub>"
                                    font.pointSize: 16
                                    textFormat: Text.RichText
                                    width:100
                                    height: 50
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                }
                                MouseArea{
                                    anchors.fill: button_o3
                                    hoverEnabled: true
                                    onEntered: {
                                        button_o3.color = "black"
                                        button_o3_text.color = "white"
                                    }
                                    onExited:  {
                                        button_o3.color = "white"
                                        button_o3_text.color = "black"
                                    }

                                    onClicked: {
                                        detail_pm25.visible = false
                                        detail_pm10.visible = false
                                        detail_no2.visible = false
                                        detail_o3.visible = true
                                        detail_so2.visible = false
                                        detail_co.visible = false
                                        mainview_.visible = false

                                        button_main.border.width = 2
                                        button_pm25.border.width = 2
                                        button_pm10.border.width = 2
                                        button_no2.border.width = 2
                                        button_o3.border.width = 6
                                        button_so2.border.width = 2
                                        button_co.border.width = 2
                                    }
                                }
                            }
                            Rectangle{
                                id:button_so2
                                width:100
                                height: 50
                                radius: 25
                                border.color: "black"
                                border.width: 2
                                Text {
                                    id: button_so2_text
                                    text:"SO<sub>2</sub>"
                                    font.pointSize: 16
                                    textFormat: Text.RichText
                                    width:100
                                    height: 50
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                }
                                MouseArea{
                                    anchors.fill: button_so2
                                    hoverEnabled: true
                                    onEntered: {
                                        button_so2.color = "black"
                                        button_so2_text.color = "white"
                                    }
                                    onExited:  {
                                        button_so2.color = "white"
                                        button_so2_text.color = "black"
                                    }

                                    onClicked: {
                                        detail_pm25.visible = false
                                        detail_pm10.visible = false
                                        detail_no2.visible = false
                                        detail_o3.visible = false
                                        detail_so2.visible = true
                                        detail_co.visible = false
                                        mainview_.visible = false

                                        button_main.border.width = 2
                                        button_pm25.border.width = 2
                                        button_pm10.border.width = 2
                                        button_no2.border.width = 2
                                        button_o3.border.width = 2
                                        button_so2.border.width = 6
                                        button_co.border.width = 2
                                    }
                                }
                            }
                            Rectangle{
                                id: button_co
                                width:100
                                height: 50
                                radius: 25
                                border.color: "black"
                                border.width: 2
                                Text {
                                    id: button_co_text
                                    text:"CO"
                                    font.pointSize: 16
                                    width:100
                                    height: 50
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                }
                                MouseArea{
                                    anchors.fill: button_co
                                    hoverEnabled: true
                                    onEntered: {
                                        button_co.color = "black"
                                        button_co_text.color = "white"
                                    }
                                    onExited:  {
                                        button_co.color = "white"
                                        button_co_text.color = "black"
                                    }

                                    onClicked: {
                                        detail_pm25.visible = false
                                        detail_pm10.visible = false
                                        detail_no2.visible = false
                                        detail_o3.visible = false
                                        detail_so2.visible = false
                                        detail_co.visible = true
                                        mainview_.visible = false

                                        button_main.border.width = 2
                                        button_pm25.border.width = 2
                                        button_pm10.border.width = 2
                                        button_no2.border.width = 2
                                        button_o3.border.width = 2
                                        button_so2.border.width = 2
                                        button_co.border.width = 6
                                    }
                                }
                            }
                        }
                        /////////////////详情
                    }
                    ////////////////////////////////////////////////////////////////总览界面（含各个污染物）
                    Grid {
                        id: mainview_
                        columns: 2
                        columnSpacing: 10
                        rowSpacing: 10
                        anchors.top: choosebar.bottom
                        anchors.horizontalCenter: evaluatepart.horizontalCenter
                        visible: true

                        property int unitw
                        property int unith

                        Rectangle {
                            id: main_evaluate_pm25
                            width: 680
                            height: 160
                            color: "#DBDCDC"
                            //                            radius: 30

                            Rectangle {
                                id: pm25_text
                                width: 680
                                height: 60
                                color: "#62BC6A"
                                Text {
                                    width:150
                                    height: 60
                                    text: "PM<sub>2.5</sub>"
                                    textFormat: Text.RichText
                                    font.pointSize: 28
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    anchors.left: pm25_text.left
                                    anchors.leftMargin: 30
                                }
                            }
                            Row {
                                id: pm25_evaluate
                                width: 640
                                height: 80
                                spacing: 20
                                anchors.horizontalCenter: pm25_text.horizontalCenter
                                anchors.top: pm25_text.bottom
                                anchors.topMargin: 10
                                //                                anchors.left: pm25_text.left
                                //                                anchors.topMargin: 15
                                //                                anchors.leftMargin: 20

                                Rectangle {
                                    id: pm25_average_evaluate1
                                    width: 200
                                    height: 80
                                    //                                    radius: 30
                                    Text {
                                        id: pm25_average_evaluate2
                                        width: 200
                                        height: 35
                                        text: "平均值(μg/m<sup>3</sup>)"
                                        textFormat: Text.RichText
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: pm25_average_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: pm25_average_evaluate2.bottom
                                        text: "1.595"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignVCenter
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: pm25_maximum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: pm25_maximum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最大值(μg/m<sup>3</sup>)"
                                        textFormat: Text.RichText
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: pm25_maximum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: pm25_maximum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignVCenter
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: pm25_minimum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: pm25_minimum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最小值(μg/m<sup>3</sup>)"
                                        textFormat: Text.RichText
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: pm25_minimum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: pm25_minimum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignVCenter
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }
                            }
                        }
                        Rectangle {
                            id: main_evaluate_pm10
                            width: 680
                            height: 160
                            color: "#DBDCDC"
                            //                            radius: 30

                            Rectangle {
                                id: pm10_text
                                width: 680
                                height: 60
                                color: "#62BC6A"
                                Text {
                                    width:150
                                    height: 60
                                    text: "PM<sub>10</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    font.pointSize: 28
                                    verticalAlignment: Text.AlignVCenter
                                    anchors.left: pm10_text.left
                                    anchors.leftMargin: 30
                                }
                            }

                            Row {
                                id: pm10_evaluate
                                width: 640
                                height: 80
                                spacing: 20
                                anchors.horizontalCenter: pm10_text.horizontalCenter
                                anchors.top: pm10_text.bottom
                                anchors.topMargin: 10
                                Rectangle {
                                    id: pm10_average_evaluate1
                                    width:  200
                                    height: 80
                                    Text {
                                        id: pm10_average_evaluate2
                                        width: 200
                                        height: 35
                                        text: "平均值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: pm10_average_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: pm10_average_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: pm10_maximum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: pm10_maximum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最大值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: pm10_maximum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: pm10_maximum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: pm10_minimum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: pm10_minimum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最小值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: pm10_minimum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: pm10_minimum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }
                            }
                        }
                        Rectangle {
                            id: main_evaluate_co
                            width: 680
                            height: 160
                            color: "#DBDCDC"
                            //                            radius: 30

                            Rectangle {
                                id: co_text
                                width: 680
                                height: 60
                                color: "#62BC6A"
                                Text {
                                    width:150
                                    height: 60
                                    text: "CO"
                                    font.pointSize: 28
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    anchors.left: co_text.left
                                    anchors.leftMargin: 30
                                }
                            }

                            Row {
                                id: co_evaluate
                                width: 640
                                height: 80
                                spacing: 20
                                anchors.horizontalCenter: co_text.horizontalCenter
                                anchors.top: co_text.bottom
                                anchors.topMargin: 10
                                Rectangle {
                                    id: co_average_evaluate1
                                    width:  200
                                    height: 80
                                    Text {
                                        id: co_average_evaluate2
                                        width: 200
                                        height: 35
                                        text: "平均值(mg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: co_average_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: co_average_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: co_maximum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: co_maximum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最大值(mg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: co_maximum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: co_maximum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: co_minimum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: co_minimum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最小值(mg/m<sup>3</sup>)"
                                        font.pointSize: 18
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: co_minimum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: co_minimum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }
                            }
                        }
                        Rectangle {
                            id: main_evaluate_so2
                            width: 680
                            height: 160
                            color: "#DBDCDC"
                            //                            radius: 30

                            Rectangle {
                                id: so2_text
                                width: 680
                                height: 60
                                color: "#62BC6A"
                                Text {
                                    width:150
                                    height: 60
                                    text: "SO<sub>2</sub>"
                                    textFormat: Text.RichText
                                    font.pointSize: 28
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    anchors.left: so2_text.left
                                    anchors.leftMargin: 30
                                }
                            }

                            Row {
                                id: so2_evaluate
                                width: 640
                                height: 80
                                spacing: 20
                                anchors.horizontalCenter: so2_text.horizontalCenter
                                anchors.top: so2_text.bottom
                                anchors.topMargin: 10
                                Rectangle {
                                    id: so2_average_evaluate1
                                    width:  200
                                    height: 80
                                    Text {
                                        id: so2_average_evaluate2
                                        width: 200
                                        height: 35
                                        text: "平均值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: so2_average_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: so2_average_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: so2_maximum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: so2_maximum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最大值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: so2_maximum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: so2_maximum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: so2_minimum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: so2_minimum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最小值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: so2_minimum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: so2_minimum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }
                            }
                        }
                        Rectangle {
                            id: main_evaluate_no2
                            width: 680
                            height: 160
                            color: "#DBDCDC"
                            //                            radius: 30

                            Rectangle {
                                id: no2_text
                                width: 680
                                height: 60
                                color: "#62BC6A"
                                Text {
                                    width:150
                                    height: 60
                                    text: "NO<sub>2</sub>"
                                    textFormat: Text.RichText
                                    font.pointSize: 28
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    anchors.left: no2_text.left
                                    anchors.leftMargin: 30
                                }
                            }

                            Row {
                                id: no2_evaluate
                                width: 640
                                height: 80
                                spacing: 20
                                anchors.horizontalCenter: no2_text.horizontalCenter
                                anchors.top: no2_text.bottom
                                anchors.topMargin: 10
                                Rectangle {
                                    id: no2_average_evaluate1
                                    width:  200
                                    height: 80
                                    Text {
                                        id: no2_average_evaluate2
                                        width: 200
                                        height: 35
                                        text: "平均值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: no2_average_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: no2_average_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: no2_maximum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: no2_maximum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最大值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: no2_maximum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: no2_maximum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: no2_minimum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: no2_minimum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最小值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: no2_minimum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: no2_minimum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }
                            }
                        }
                        Rectangle {
                            id: main_evaluate_o3
                            width: 680
                            height: 160
                            color: "#DBDCDC"
                            //                            radius: 30

                            Rectangle {
                                id: o3_text
                                width: 680
                                height: 60
                                color: "#62BC6A"
                                Text {
                                    width:150
                                    height: 60
                                    text: "O<sub>3</sub>"
                                    textFormat: Text.RichText
                                    font.pointSize: 28
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    anchors.left: o3_text.left
                                    anchors.leftMargin: 30
                                }
                            }

                            Row {
                                id: o3_evaluate
                                width: 640
                                height: 80
                                spacing: 20
                                anchors.horizontalCenter: o3_text.horizontalCenter
                                anchors.top: o3_text.bottom
                                anchors.topMargin: 10
                                Rectangle {
                                    id: o3_average_evaluate1
                                    width:  200
                                    height: 80
                                    Text {
                                        id: o3_average_evaluate2
                                        width: 200
                                        height: 35
                                        text: "平均值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: o3_average_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: o3_average_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: o3_maximum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: o3_maximum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最大值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: o3_maximum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: o3_maximum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }

                                Rectangle {
                                    id: o3_minimum_evaluate1
                                    width: 200
                                    height: 80
                                    Text {
                                        id: o3_minimum_evaluate2
                                        width: 200
                                        height: 35
                                        text: "最小值(μg/m<sup>3</sup>)"
                                        font.pointSize: 16
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                    Text {
                                        id: o3_minimum_evaluate3
                                        width: 200
                                        height: 45
                                        anchors.top: o3_minimum_evaluate2.bottom
                                        text: "1"
                                        font.pointSize: 24
                                        verticalAlignment: Text.AlignBottom
                                        horizontalAlignment: Text.AlignHCenter
                                    }
                                }
                            }
                        }
                    }
                    ////////////////////////////////////////////////////////////////各污染物详图
                    Item {
                        id: detail_item
                        width: 1370//1440
                        height: 500
                        anchors.top: choosebar.bottom
                        anchors.horizontalCenter: choosebar.horizontalCenter
                        /////////////////////////////////////////////////////////PM25
                        Rectangle {
                            id:detail_pm25
                            visible: false
                            width: 1370//1440
                            height: 500
                            color: "#DBDCDC"
                            Item {
                                id: title_pm25
                                width: 675
                                height: 80
                                anchors.left: detailpart_pm25.left
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: titlebg_pm25
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: title_pm25.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "PM<sub>2.5</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: title_pm25.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Item {
                                id: charttitle_pm25
                                width: 675
                                height: 80
                                anchors.left: title_pm25.right
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: charttitlebg_pm25
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: charttitle_pm25.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "PM<sub>2.5</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: charttitle_pm25.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Row{
                                id: detailpart_pm25
                                width: 1370
                                height: 500
                                spacing: 35
                                anchors.horizontalCenter: detail_pm25.horizontalCenter
                                anchors.top: title_pm25.bottom
                                anchors.topMargin: 1
                                Rectangle {
                                    id: detail_pm25_info
                                    width: 675//680
                                    height: 400//280
                                    color: "#DBDCDC"
                                    radius: 30
                                    Grid {
                                        id: dealing_pm25
                                        columns: 3
                                        rows:3
                                        columnSpacing: 20
                                        rowSpacing: 20
                                        width: 640
                                        height: 400
                                        anchors.horizontalCenter: detail_pm25_info.horizontalCenter
                                        anchors.verticalCenter: detail_pm25_info.verticalCenter

                                        Rectangle {
                                            id: aqi_pm25
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "AQI"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "129"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: aqi_pm25.bottom
                                            }
                                        }

                                        Rectangle {
                                            id: average_pm25
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "平均值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: average_pm25.bottom
                                            }
                                        }

                                        Rectangle {
                                            id: pointnum_pm25
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "测量点数量"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "20"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: pointnum_pm25.bottom
                                            }
                                        }

                                        Rectangle {
                                            id: maximum_pm25
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "最大值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maximum_pm25.top
                                                font.pointSize: 18
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maximum_pm25.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maxlatlon_pm25
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: maxlat_pm25
                                                    text: "经度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize:14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: maxlat_value_pm25
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlat_pm25.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: maxlatlon_pm25.bottom
                                                Text{
                                                    id: maxlon_pm25
                                                    text: "纬度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:maxlon_value_pm25
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlon_pm25.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: maxhei_pm25
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maxhei_pm25.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maxhei_pm25.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minimum_pm25
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "最小值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minimum_pm25.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minimum_pm25.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minlatlon_pm25
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: minlat_pm25
                                                    text: "经度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: minlat_value_pm25
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlat_pm25.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: minlatlon_pm25.bottom
                                                Text{
                                                    id: minlon_pm25
                                                    text: "纬度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:minlon_value_pm25
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlon_pm25.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: minhei_pm25
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text:"高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minhei_pm25.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minhei_pm25.bottom
                                            }
                                        }
//                                        Rectangle {
//                                            id: average_pm25
//                                            width: 200
//                                            height: 120
//                                            //                                            radius: 25
//                                            Text {
//                                                text: "平均值μg/m<sup>3</sup>"
//                                                textFormat: Text.RichText
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 18
//                                                horizontalAlignment: Text.AlignHCenter
//                                                verticalAlignment: Text.AlignVCenter
//                                                //                                                anchors.centerIn: averagetext_pm25
//                                            }
//                                            Text {
//                                                text: "1"
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 30
//                                                horizontalAlignment: Text.AlignHCenter
//                                                anchors.bottom: average_pm25.bottom
//                                            }
//                                        }
                                    }
                                }
                                ///////////////////////////////////////////////////////////折线图
                                Rectangle {
                                    id: detail_pm25_chartview
                                    width: 640
                                    height: 400
                                    //                                    color: "#DBDCDC"
                                    //                                    radius: 30
                                    Item {
                                        id: chartView_pm25_item
                                        width: 640
                                        height: 400
                                        anchors.top: detail_pm25_chartview.top
//                                        anchors.topMargin: 10

                                        ChartView {
                                            id: chartView_pm25
                                            anchors.fill: parent
                                            theme: ChartView.ChartThemeDark
                                            antialiasing: true
                                            animationOptions: ChartView.SeriesAnimations
//                                            plotAreaColor: "white"
                                            legend.visible: false
                                            ValueAxis {
                                                id: axisX_pm25
                                                min: 0
                                                max: 10
                                                tickCount: 11
                                                labelsVisible: false
                                            }
                                            ValueAxis {
                                                id: axisY_pm25
                                                min: 0
                                                max: 1000
                                                tickCount: 5
                                                labelsVisible: false
                                            }

                                            LineSeries {
                                                id:line_pm25
                                                axisX: axisX_pm25
                                                axisY: axisY_pm25
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        /////////////////////////////////////////////////////////PM10
                        Rectangle {
                            id:detail_pm10
                            visible: false
                            width: 1370//1440
                            height: 500
                            color: "#DBDCDC"
                            Item {
                                id: title_pm10
                                width: 675
                                height: 80
                                anchors.left: detailpart_pm10.left
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: titlebg_pm10
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: title_pm10.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "PM<sub>10</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: title_pm10.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Item {
                                id: charttitle_pm10
                                width: 675
                                height: 80
                                anchors.left: title_pm10.right
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: charttitlebg_pm10
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: charttitle_pm10.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "PM<sub>10</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: charttitle_pm10.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Row{
                                id: detailpart_pm10
                                width: 1370
                                height: 500
                                spacing: 35
                                anchors.horizontalCenter: detail_pm10.horizontalCenter
                                anchors.top: title_pm10.bottom
                                anchors.topMargin: 1

                                Rectangle {
                                    id: detail_pm10_info
                                    width: 675//680
                                    height: 400//280
                                    color: "#DBDCDC"
                                    radius: 30
                                    Grid {
                                        id: dealing_pm10
                                        columns: 3
                                        rows:3
                                        columnSpacing: 20
                                        rowSpacing: 20
                                        width: 640
                                        height: 400
                                        anchors.horizontalCenter: detail_pm10_info.horizontalCenter
                                        anchors.verticalCenter: detail_pm10_info.verticalCenter

                                        Rectangle {
                                            id: aqi_pm10
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "AQI"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "129"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: aqi_pm10.bottom
                                            }
                                        }

                                        Rectangle {
                                            id: average_pm10
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "平均值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: average_pm10.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: pointnum_pm10
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "测量点数量"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "20"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: pointnum_pm10.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maximum_pm10
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "最大值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maximum_pm10.top
                                                font.pointSize: 18
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maximum_pm10.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maxlatlon_pm10
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: maxlat_pm10
                                                    text: "经度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize:14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: maxlat_value_pm10
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlat_pm10.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: maxlatlon_pm10.bottom
                                                Text{
                                                    id: maxlon_pm10
                                                    text: "纬度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:maxlon_value_pm10
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlon_pm10.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: maxhei_pm10
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maxhei_pm10.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maxhei_pm10.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minimum_pm10
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "最小值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minimum_pm10.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minimum_pm10.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minlatlon_pm10
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: minlat_pm10
                                                    text: "经度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: minlat_value_pm10
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlat_pm10.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: minlatlon_pm10.bottom
                                                Text{
                                                    id: minlon_pm10
                                                    text: "纬度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:minlon_value_pm10
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlon_pm10.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: minhei_pm10
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text:"高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minhei_pm10.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minhei_pm10.bottom
                                            }
                                        }
//                                        Rectangle {
//                                            id: average_pm10
//                                            width: 200
//                                            height: 120
//                                            //                                            radius: 25
//                                            Text {
//                                                text: "平均值μg/m<sup>3</sup>"
//                                                textFormat: Text.RichText
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 18
//                                                horizontalAlignment: Text.AlignHCenter
//                                                verticalAlignment: Text.AlignVCenter
//                                                //                                                anchors.centerIn: averagetext_pm25
//                                            }
//                                            Text {
//                                                text: "1"
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 30
//                                                horizontalAlignment: Text.AlignHCenter
//                                                anchors.bottom: average_pm10.bottom
//                                            }
//                                        }
                                    }
                                }
                                ///////////////////////////////////////////////////////////折线图
                                Rectangle {
                                    id: detail_pm10_chartview
                                    width: 640
                                    height: 400
                                    //                                    color: "#DBDCDC"
                                    //                                    radius: 30
                                    Item {
                                        id: chartView_pm10_item
                                        width: 640
                                        height: 400
                                        anchors.top: detail_pm10_chartview.top
//                                        anchors.topMargin: 10

                                        ChartView {
                                            id: chartView_pm10
                                            anchors.fill: parent
                                            theme: ChartView.ChartThemeDark
                                            antialiasing: true
                                            animationOptions: ChartView.SeriesAnimations
//                                            plotAreaColor: "white"
                                            legend.visible: false
                                            ValueAxis {
                                                id: axisX_pm10
                                                min: 0
                                                max: 10
                                                tickCount: 11
                                                labelsVisible: false
                                            }
                                            ValueAxis {
                                                id: axisY_pm10
                                                min: 0
                                                max: 1000
                                                tickCount: 5
                                                labelsVisible: false
                                            }

                                            LineSeries {
                                                id:line_pm10
                                                axisX: axisX_pm10
                                                axisY: axisY_pm10
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        /////////////////////////////////////////////////////////NO2
                        Rectangle {
                            id:detail_no2
                            visible: false
                            width: 1370//1440
                            height: 500
                            color: "#DBDCDC"
                            Item {
                                id: title_no2
                                width: 675
                                height: 80
                                anchors.left: detailpart_no2.left
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: titlebg_no2
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: title_no2.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "NO<sub>2</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: title_no2.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Item {
                                id: charttitle_no2
                                width: 675
                                height: 80
                                anchors.left: title_no2.right
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: charttitlebg_no2
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: charttitle_no2.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "NO<sub>2</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: charttitle_no2.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Row{
                                id: detailpart_no2
                                width: 1370
                                height: 500
                                spacing: 35
                                anchors.horizontalCenter: detail_no2.horizontalCenter
                                anchors.top: title_no2.bottom
                                anchors.topMargin: 1
                                Rectangle {
                                    id: detail_no2_info
                                    width: 675//680
                                    height: 400//280
                                    color: "#DBDCDC"
                                    radius: 30
                                    Grid {
                                        id: dealing_no2
                                        columns: 3
                                        rows:3
                                        columnSpacing: 20
                                        rowSpacing: 20
                                        width: 640
                                        height: 400
                                        anchors.horizontalCenter: detail_no2_info.horizontalCenter
                                        anchors.verticalCenter: detail_no2_info.verticalCenter

                                        Rectangle {
                                            id: aqi_no2
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "AQI"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "129"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: aqi_no2.bottom
                                            }
                                        }

                                        Rectangle {
                                            id: average_no2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "平均值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: average_no2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: pointnum_no2
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "测量点数量"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "20"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: pointnum_no2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maximum_no2
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "最大值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maximum_no2.top
                                                font.pointSize: 18
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maximum_no2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maxlatlon_no2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: maxlat_no2
                                                    text: "经度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize:14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: maxlat_value_no2
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlat_no2.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: maxlatlon_no2.bottom
                                                Text{
                                                    id: maxlon_no2
                                                    text: "纬度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:maxlon_value_no2
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlon_no2.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: maxhei_no2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maxhei_no2.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maxhei_no2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minimum_no2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "最小值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minimum_no2.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minimum_no2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minlatlon_no2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: minlat_no2
                                                    text: "经度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: minlat_value_no2
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlat_no2.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: minlatlon_no2.bottom
                                                Text{
                                                    id: minlon_no2
                                                    text: "纬度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:minlon_value_no2
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlon_no2.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: minhei_no2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text:"高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minhei_no2.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minhei_no2.bottom
                                            }
                                        }
//                                        Rectangle {
//                                            id: average_no2
//                                            width: 200
//                                            height: 120
//                                            //                                            radius: 25
//                                            Text {
//                                                text: "平均值μg/m<sup>3</sup>"
//                                                textFormat: Text.RichText
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 18
//                                                horizontalAlignment: Text.AlignHCenter
//                                                verticalAlignment: Text.AlignVCenter
//                                                //                                                anchors.centerIn: averagetext_pm25
//                                            }
//                                            Text {
//                                                text: "1"
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 30
//                                                horizontalAlignment: Text.AlignHCenter
//                                                anchors.bottom: average_no2.bottom
//                                            }
//                                        }
                                    }
                                }
                                ///////////////////////////////////////////////////////////折线图
                                Rectangle {
                                    id: detail_no2_chartview
                                    width: 640
                                    height: 400
                                    //                                    color: "#DBDCDC"
                                    //                                    radius: 30
                                    Item {
                                        id: chartView_no2_item
                                        width: 640
                                        height: 400
                                        anchors.top: detail_no2_chartview.top
//                                        anchors.topMargin: 10

                                        ChartView {
                                            id: chartView_no2
                                            anchors.fill: parent
                                            theme: ChartView.ChartThemeDark
                                            antialiasing: true
                                            animationOptions: ChartView.SeriesAnimations
//                                            plotAreaColor: "white"
                                            legend.visible: false
                                            ValueAxis {
                                                id: axisX_no2
                                                min: 0
                                                max: 10
                                                tickCount: 11
                                                labelsVisible: false
                                            }
                                            ValueAxis {
                                                id: axisY_no2
                                                min: 0
                                                max: 1000
                                                tickCount: 5
                                                labelsVisible: false
                                            }

                                            LineSeries {
                                                id:line_no2
                                                axisX: axisX_no2
                                                axisY: axisY_no2
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        /////////////////////////////////////////////////////////O3
                        Rectangle {
                            id:detail_o3
                            visible: false
                            width: 1370//1440
                            height: 500
                            color: "#DBDCDC"
                            Item {
                                id: title_o3
                                width: 675
                                height: 80
                                anchors.left: detailpart_o3.left
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: titlebg_o3
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: title_o3.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "O<sub>3</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: title_o3.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Item {
                                id: charttitle_o3
                                width: 675
                                height: 80
                                anchors.left: title_o3.right
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: charttitlebg_o3
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: charttitle_o3.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "O<sub>3</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: charttitle_o3.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Row{
                                id: detailpart_o3
                                width: 1370
                                height: 500
                                spacing: 35
                                anchors.horizontalCenter: detail_o3.horizontalCenter
                                anchors.top: title_o3.bottom
                                anchors.topMargin: 1
                                Rectangle {
                                    id: detail_o3_info
                                    width: 675//680
                                    height: 400//280
                                    color: "#DBDCDC"
                                    radius: 30
                                    Grid {
                                        id: dealing_o3
                                        columns: 3
                                        rows:3
                                        columnSpacing: 20
                                        rowSpacing: 20
                                        width: 640
                                        height: 400
                                        anchors.horizontalCenter: detail_o3_info.horizontalCenter
                                        anchors.verticalCenter: detail_o3_info.verticalCenter

                                        Rectangle {
                                            id: aqi_o3
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "AQI"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "129"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: aqi_o3.bottom
                                            }
                                        }

                                        Rectangle {
                                            id: average_o3
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "平均值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: average_o3.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: pointnum_o3
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "测量点数量"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "20"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: pointnum_o3.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maximum_o3
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "最大值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maximum_o3.top
                                                font.pointSize: 18
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maximum_o3.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maxlatlon_o3
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: maxlat_o3
                                                    text: "经度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize:14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: maxlat_value_o3
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlat_o3.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: maxlatlon_o3.bottom
                                                Text{
                                                    id: maxlon_o3
                                                    text: "纬度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:maxlon_value_o3
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlon_o3.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: maxhei_o3
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maxhei_o3.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maxhei_o3.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minimum_o3
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "最小值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minimum_o3.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minimum_o3.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minlatlon_o3
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: minlat_o3
                                                    text: "经度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: minlat_value_o3
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlat_o3.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: minlatlon_o3.bottom
                                                Text{
                                                    id: minlon_o3
                                                    text: "纬度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:minlon_value_o3
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlon_o3.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: minhei_o3
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text:"高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minhei_o3.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minhei_o3.bottom
                                            }
                                        }
//                                        Rectangle {
//                                            id: average_o3
//                                            width: 200
//                                            height: 120
//                                            //                                            radius: 25
//                                            Text {
//                                                text: "平均值μg/m<sup>3</sup>"
//                                                textFormat: Text.RichText
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 18
//                                                horizontalAlignment: Text.AlignHCenter
//                                                verticalAlignment: Text.AlignVCenter
//                                                //                                                anchors.centerIn: averagetext_pm25
//                                            }
//                                            Text {
//                                                text: "1"
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 30
//                                                horizontalAlignment: Text.AlignHCenter
//                                                anchors.bottom: average_o3.bottom
//                                            }
//                                        }
                                    }
                                }
                                ///////////////////////////////////////////////////////////折线图
                                Rectangle {
                                    id: detail_o3_chartview
                                    width: 640
                                    height: 400
                                    //                                    color: "#DBDCDC"
                                    //                                    radius: 30
                                    Item {
                                        id: chartView_o3_item
                                        width: 640
                                        height: 400
                                        anchors.top: detail_o3_chartview.top
//                                        anchors.topMargin: 10

                                        ChartView {
                                            id: chartView_o3
                                            anchors.fill: parent
                                            theme: ChartView.ChartThemeDark
                                            antialiasing: true
                                            animationOptions: ChartView.SeriesAnimations
//                                            plotAreaColor: "white"
                                            legend.visible: false
                                            ValueAxis {
                                                id: axisX_o3
                                                min: 0
                                                max: 10
                                                tickCount: 11
                                                labelsVisible: false
                                            }
                                            ValueAxis {
                                                id: axisY_o3
                                                min: 0
                                                max: 1000
                                                tickCount: 5
                                                labelsVisible: false
                                            }

                                            LineSeries {
                                                id:line_o3
                                                axisX: axisX_o3
                                                axisY: axisY_o3
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        /////////////////////////////////////////////////////////SO2
                        Rectangle {
                            id:detail_so2
                            visible: false
                            width: 1370//1440
                            height: 500
                            color: "#DBDCDC"
                            Item {
                                id: title_so2
                                width: 675
                                height: 80
                                anchors.left: detailpart_so2.left
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: titlebg_so2
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: title_so2.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "SO<sub>2</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: title_so2.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Item {
                                id: charttitle_so2
                                width: 675
                                height: 80
                                anchors.left: title_so2.right
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: charttitlebg_so2
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: charttitle_so2.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "SO<sub>2</sub>"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: charttitle_so2.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Row{
                                id: detailpart_so2
                                width: 1370
                                height: 500
                                spacing: 35
                                anchors.horizontalCenter: detail_so2.horizontalCenter
                                anchors.top: title_so2.bottom
                                anchors.topMargin: 1
                                Rectangle {
                                    id: detail_so2_info
                                    width: 675//680
                                    height: 400//280
                                    color: "#DBDCDC"
                                    radius: 30
                                    Grid {
                                        id: dealing_so2
                                        columns: 3
                                        rows:3
                                        columnSpacing: 20
                                        rowSpacing: 20
                                        width: 640
                                        height: 400
                                        anchors.horizontalCenter: detail_so2_info.horizontalCenter
                                        anchors.verticalCenter: detail_so2_info.verticalCenter

                                        Rectangle {
                                            id: aqi_so2
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "AQI"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "129"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: aqi_so2.bottom
                                            }
                                        }

                                        Rectangle {
                                            id: average_so2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "平均值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: average_so2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: pointnum_so2
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "测量点数量"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "20"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: pointnum_so2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maximum_so2
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "最大值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maximum_so2.top
                                                font.pointSize: 18
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maximum_so2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maxlatlon_so2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: maxlat_so2
                                                    text: "经度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize:14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: maxlat_value_so2
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlat_so2.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: maxlatlon_so2.bottom
                                                Text{
                                                    id: maxlon_so2
                                                    text: "纬度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:maxlon_value_so2
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlon_so2.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: maxhei_so2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maxhei_so2.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maxhei_so2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minimum_so2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "最小值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minimum_so2.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minimum_so2.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minlatlon_so2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: minlat_so2
                                                    text: "经度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: minlat_value_so2
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlat_so2.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: minlatlon_so2.bottom
                                                Text{
                                                    id: minlon_so2
                                                    text: "纬度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:minlon_value_so2
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlon_so2.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: minhei_so2
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text:"高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minhei_so2.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minhei_so2.bottom
                                            }
                                        }
//                                        Rectangle {
//                                            id: average_so2
//                                            width: 200
//                                            height: 120
//                                            //                                            radius: 25
//                                            Text {
//                                                text: "平均值μg/m<sup>3</sup>"
//                                                textFormat: Text.RichText
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 18
//                                                horizontalAlignment: Text.AlignHCenter
//                                                verticalAlignment: Text.AlignVCenter
//                                                //                                                anchors.centerIn: averagetext_pm25
//                                            }
//                                            Text {
//                                                text: "1"
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 30
//                                                horizontalAlignment: Text.AlignHCenter
//                                                anchors.bottom: average_so2.bottom
//                                            }
//                                        }
                                    }
                                }
                                ///////////////////////////////////////////////////////////折线图
                                Rectangle {
                                    id: detail_so2_chartview
                                    width: 640
                                    height: 400
                                    //                                    color: "#DBDCDC"
                                    //                                    radius: 30
                                    Item {
                                        id: chartView_so2_item
                                        width: 640
                                        height: 400
                                        anchors.top: detail_so2_chartview.top
//                                        anchors.topMargin: 10
                                        ChartView {
                                            id: chartView_so2
                                            anchors.fill: parent
                                            theme: ChartView.ChartThemeDark
                                            antialiasing: true
                                            animationOptions: ChartView.SeriesAnimations
//                                            plotAreaColor: "white"
                                            legend.visible: false
                                            ValueAxis {
                                                id: axisX_so2
                                                min: 0
                                                max: 10
                                                tickCount: 11
                                                labelsVisible: false
                                            }
                                            ValueAxis {
                                                id: axisY_so2
                                                min: 0
                                                max: 1000
                                                tickCount: 5
                                                labelsVisible: false
                                            }

                                            LineSeries {
                                                id:line_so2
                                                axisX: axisX_so2
                                                axisY: axisY_so2
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        /////////////////////////////////////////////////////////CO
                        Rectangle {
                            id:detail_co
                            visible: false
                            width: 1370//1440
                            height: 500
                            color: "#DBDCDC"
                            Item {
                                id: title_co
                                width: 675
                                height: 80
                                anchors.left: detailpart_co.left
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: titlebg_co
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: title_co.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "CO"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: title_co.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Item {
                                id: charttitle_co
                                width: 675
                                height: 80
                                anchors.left: title_co.right
                                anchors.leftMargin: 18
                                Rectangle {
                                    id: charttitlebg_co
                                    width: 640
                                    height: 60
                                    anchors.verticalCenter: charttitle_co.verticalCenter
                                    color: "#009FE8"
                                }

                                Text {
                                    width: 70
                                    height: 80
                                    text: "CO"
                                    textFormat: Text.RichText
                                    font.family: "Times New Roman"
                                    verticalAlignment: Text.AlignVCenter
                                    font.pointSize: 26
                                    anchors.left: charttitle_co.left
                                    anchors.leftMargin: 20
                                }
                            }
                            Row{
                                id: detailpart_co
                                width: 1370
                                height: 500
                                spacing: 35
                                anchors.horizontalCenter: detail_co.horizontalCenter
                                anchors.top: title_co.bottom
                                anchors.topMargin: 1
                                Rectangle {
                                    id: detail_co_info
                                    width: 675//680
                                    height: 400//280
                                    color: "#DBDCDC"
                                    radius: 30
                                    Grid {
                                        id: dealing_co
                                        columns: 3
                                        rows:3
                                        columnSpacing: 20
                                        rowSpacing: 20
                                        width: 640
                                        height: 400
                                        anchors.horizontalCenter: detail_co_info.horizontalCenter
                                        anchors.verticalCenter: detail_co_info.verticalCenter

                                        Rectangle {
                                            id: aqi_co
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "AQI"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "129"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: aqi_co.bottom
                                            }
                                        }

                                        Rectangle {
                                            id: average_co
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "平均值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: average_co.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: pointnum_co
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "测量点数量"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                //                                                anchors.centerIn: averagetext_pm25
                                            }
                                            Text {
                                                text: "20"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: pointnum_co.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maximum_co
                                            width: 200
                                            height: 120
                                            Text {
                                                text: "最大值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maximum_co.top
                                                font.pointSize: 18
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maximum_co.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: maxlatlon_co
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: maxlat_co
                                                    text: "经度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize:14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: maxlat_value_co
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlat_co.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: maxlatlon_co.bottom
                                                Text{
                                                    id: maxlon_co
                                                    text: "纬度:"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:maxlon_value_co
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: maxlon_co.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: maxhei_co
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: maxhei_co.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: maxhei_co.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minimum_co
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text: "最小值μg/m<sup>3</sup>"
                                                textFormat: Text.RichText
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minimum_co.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minimum_co.bottom
                                            }
                                        }
                                        Rectangle {
                                            id: minlatlon_co
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Item{
                                                width: 200
                                                height: 60
                                                Text {
                                                    id: minlat_co
                                                    text: "经度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text {
                                                    id: minlat_value_co
                                                    text: "116°20’43”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlat_co.bottom
                                                }
                                            }
                                            Item{
                                                width: 200
                                                height: 60
                                                anchors.bottom: minlatlon_co.bottom
                                                Text{
                                                    id: minlon_co
                                                    text: "纬度"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 14
                                                    font.bold: true
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                }
                                                Text{
                                                    id:minlon_value_co
                                                    text: "39°12’37”"
                                                    width: 200
                                                    height: 30
                                                    font.pointSize: 16
                                                    verticalAlignment: Text.AlignVCenter
                                                    horizontalAlignment: Text.AlignHCenter
                                                    anchors.top: minlon_co.bottom
                                                }
                                            }
                                        }
                                        Rectangle {
                                            id: minhei_co
                                            width: 200
                                            height: 120
                                            //                                            radius: 25
                                            Text {
                                                text:"高度m"
                                                width: 200
                                                height: 60
                                                font.pointSize: 18
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                anchors.top: minhei_co.top
                                            }
                                            Text {
                                                text: "1"
                                                width: 200
                                                height: 60
                                                font.pointSize: 30
                                                horizontalAlignment: Text.AlignHCenter
                                                anchors.bottom: minhei_co.bottom
                                            }
                                        }
//                                        Rectangle {
//                                            id: average_co
//                                            width: 200
//                                            height: 120
//                                            //                                            radius: 25
//                                            Text {
//                                                text: "平均值μg/m<sup>3</sup>"
//                                                textFormat: Text.RichText
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 18
//                                                horizontalAlignment: Text.AlignHCenter
//                                                verticalAlignment: Text.AlignVCenter
//                                                //                                                anchors.centerIn: averagetext_pm25
//                                            }
//                                            Text {
//                                                text: "1"
//                                                width: 200
//                                                height: 60
//                                                font.pointSize: 30
//                                                horizontalAlignment: Text.AlignHCenter
//                                                anchors.bottom: average_co.bottom
//                                            }
//                                        }
                                    }
                                }
                                ///////////////////////////////////////////////////////////折线图
                                Rectangle {
                                    id: detail_co_chartview
                                    width: 640
                                    height: 400
                                    //                                    color: "#DBDCDC"
                                    //                                    radius: 30
                                    Item {
                                        id: chartView_co_item
                                        width: 640
                                        height: 400
                                        anchors.top: detail_co_chartview.top
//                                        anchors.topMargin: 10

                                        ChartView {
                                            id: chartView_co
                                            anchors.fill: parent
                                            theme: ChartView.ChartThemeDark
                                            antialiasing: true
                                            animationOptions: ChartView.SeriesAnimations
//                                            plotAreaColor: "white"
                                            legend.visible: false
                                            ValueAxis {
                                                id: axisX_co
                                                min: 0
                                                max: 10
                                                tickCount: 11
                                                labelsVisible: false
//                                                titleVisible: false
                                            }
                                            ValueAxis {
                                                id: axisY_co
                                                min: 0
                                                max: 1000
                                                tickCount: 5
                                                labelsVisible: false
//                                                titleVisible: false
                                            }

                                            LineSeries {
                                                id:line_co
                                                axisX: axisX_co
                                                axisY: axisY_co
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
//}
