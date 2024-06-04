import QtQuick
import QtQuick.Controls

import org.qfield 1.0
import Theme 1.0

Item {
  id: plugin

  property var mainWindow: iface.mainWindow()
  property var mapSettings: iface.mapCanvas().mapSettings
  property var position: iface.findItemByObjectName('positionSource')

  property var weatherCodeInformation: JSON.parse('{"0":{"day":{"description":"Sunny","image":"http://openweathermap.org/img/wn/01d@2x.png"},"night":{"description":"Clear","image":"http://openweathermap.org/img/wn/01n@2x.png"}},"1":{"day":{"description":"Mainly Sunny","image":"http://openweathermap.org/img/wn/01d@2x.png"},"night":{"description":"Mainly Clear","image":"http://openweathermap.org/img/wn/01n@2x.png"}},"2":{"day":{"description":"Partly Cloudy","image":"http://openweathermap.org/img/wn/02d@2x.png"},"night":{"description":"Partly Cloudy","image":"http://openweathermap.org/img/wn/02n@2x.png"}},"3":{"day":{"description":"Cloudy","image":"http://openweathermap.org/img/wn/03d@2x.png"},"night":{"description":"Cloudy","image":"http://openweathermap.org/img/wn/03n@2x.png"}},"45":{"day":{"description":"Foggy","image":"http://openweathermap.org/img/wn/50d@2x.png"},"night":{"description":"Foggy","image":"http://openweathermap.org/img/wn/50n@2x.png"}},"48":{"day":{"description":"Rime Fog","image":"http://openweathermap.org/img/wn/50d@2x.png"},"night":{"description":"Rime Fog","image":"http://openweathermap.org/img/wn/50n@2x.png"}},"51":{"day":{"description":"Light Drizzle","image":"http://openweathermap.org/img/wn/09d@2x.png"},"night":{"description":"Light Drizzle","image":"http://openweathermap.org/img/wn/09n@2x.png"}},"53":{"day":{"description":"Drizzle","image":"http://openweathermap.org/img/wn/09d@2x.png"},"night":{"description":"Drizzle","image":"http://openweathermap.org/img/wn/09n@2x.png"}},"55":{"day":{"description":"Heavy Drizzle","image":"http://openweathermap.org/img/wn/09d@2x.png"},"night":{"description":"Heavy Drizzle","image":"http://openweathermap.org/img/wn/09n@2x.png"}},"56":{"day":{"description":"Light Freezing Drizzle","image":"http://openweathermap.org/img/wn/09d@2x.png"},"night":{"description":"Light Freezing Drizzle","image":"http://openweathermap.org/img/wn/09n@2x.png"}},"57":{"day":{"description":"Freezing Drizzle","image":"http://openweathermap.org/img/wn/09d@2x.png"},"night":{"description":"Freezing Drizzle","image":"http://openweathermap.org/img/wn/09n@2x.png"}},"61":{"day":{"description":"Light Rain","image":"http://openweathermap.org/img/wn/10d@2x.png"},"night":{"description":"Light Rain","image":"http://openweathermap.org/img/wn/10n@2x.png"}},"63":{"day":{"description":"Rain","image":"http://openweathermap.org/img/wn/10d@2x.png"},"night":{"description":"Rain","image":"http://openweathermap.org/img/wn/10n@2x.png"}},"65":{"day":{"description":"Heavy Rain","image":"http://openweathermap.org/img/wn/10d@2x.png"},"night":{"description":"Heavy Rain","image":"http://openweathermap.org/img/wn/10n@2x.png"}},"66":{"day":{"description":"Light Freezing Rain","image":"http://openweathermap.org/img/wn/10d@2x.png"},"night":{"description":"Light Freezing Rain","image":"http://openweathermap.org/img/wn/10n@2x.png"}},"67":{"day":{"description":"Freezing Rain","image":"http://openweathermap.org/img/wn/10d@2x.png"},"night":{"description":"Freezing Rain","image":"http://openweathermap.org/img/wn/10n@2x.png"}},"71":{"day":{"description":"Light Snow","image":"http://openweathermap.org/img/wn/13d@2x.png"},"night":{"description":"Light Snow","image":"http://openweathermap.org/img/wn/13n@2x.png"}},"73":{"day":{"description":"Snow","image":"http://openweathermap.org/img/wn/13d@2x.png"},"night":{"description":"Snow","image":"http://openweathermap.org/img/wn/13n@2x.png"}},"75":{"day":{"description":"Heavy Snow","image":"http://openweathermap.org/img/wn/13d@2x.png"},"night":{"description":"Heavy Snow","image":"http://openweathermap.org/img/wn/13n@2x.png"}},"77":{"day":{"description":"Snow Grains","image":"http://openweathermap.org/img/wn/13d@2x.png"},"night":{"description":"Snow Grains","image":"http://openweathermap.org/img/wn/13n@2x.png"}},"80":{"day":{"description":"Light Showers","image":"http://openweathermap.org/img/wn/09d@2x.png"},"night":{"description":"Light Showers","image":"http://openweathermap.org/img/wn/09n@2x.png"}},"81":{"day":{"description":"Showers","image":"http://openweathermap.org/img/wn/09d@2x.png"},"night":{"description":"Showers","image":"http://openweathermap.org/img/wn/09n@2x.png"}},"82":{"day":{"description":"Heavy Showers","image":"http://openweathermap.org/img/wn/09d@2x.png"},"night":{"description":"Heavy Showers","image":"http://openweathermap.org/img/wn/09n@2x.png"}},"85":{"day":{"description":"Light Snow Showers","image":"http://openweathermap.org/img/wn/13d@2x.png"},"night":{"description":"Light Snow Showers","image":"http://openweathermap.org/img/wn/13n@2x.png"}},"86":{"day":{"description":"Snow Showers","image":"http://openweathermap.org/img/wn/13d@2x.png"},"night":{"description":"Snow Showers","image":"http://openweathermap.org/img/wn/13n@2x.png"}},"95":{"day":{"description":"Thunderstorm","image":"http://openweathermap.org/img/wn/11d@2x.png"},"night":{"description":"Thunderstorm","image":"http://openweathermap.org/img/wn/11n@2x.png"}},"96":{"day":{"description":"Light Thunderstorms With Hail","image":"http://openweathermap.org/img/wn/11d@2x.png"},"night":{"description":"Light Thunderstorms With Hail","image":"http://openweathermap.org/img/wn/11n@2x.png"}},"99":{"day":{"description":"Thunderstorm With Hail","image":"http://openweathermap.org/img/wn/11d@2x.png"},"night":{"description":"Thunderstorm With Hail","image":"http://openweathermap.org/img/wn/11n@2x.png"}}}')
  property string weatherForecastText: ""

  Dialog {
    id: aboutDialog
    parent: mainWindow.contentItem

    title: "Information"

    visible: false
    modal: true
    font: Theme.defaultFont

    z: 10000
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    
    Label {
      width: parent.width
      wrapMode: Text.WordWrap
      text: weatherForecastText + "\n\nWeather provided by Open-Meteo API"
    }

    standardButtons: Dialog.Ok
  }

  QfToolButtonDrawer {
    id: weatherForecastDrawer
    visible: position.active
    bgcolor: Theme.darkGray
    round: true

    QfToolButton {
      id: temperatureButton
      bgcolor: Theme.darkGraySemiOpaque
      iconColor: "transparent"
      width: 40
      height: 40
      padding: 0
      round: true
      font.pointSize: 10
      font.bold: true

      Label {
        anchors.centerIn: parent
        font.pointSize: 10
        font.bold: true
        color: "white"
        style: Text.Outline
        styleColor: Theme.darkGray

        text: parent.text
      }

      onClicked: {
        aboutDialog.open()
      }
    }
  }

  Timer {
    id: fetchWeatherTimer
    interval: 10000
    repeat: true
    running: false
    triggeredOnStart: true

    onTriggered: {
      let info = position.positionInformation
      if (info.longitudeValid && info.latitudeValid) {
        // 30 minute check following the first forecast acquired
        interval = 1800000
        fetchWeatherForecast();
      } else {
        // 10 second check to acquire a first forecast
        interval = 10000
      }
    }
  }

  function fetchWeatherForecast() {
    let info = position.positionInformation
    let request = new XMLHttpRequest();

    request.onreadystatechange = function() {
      if (request.readyState === XMLHttpRequest.DONE) {
        var responseObject = JSON.parse(request.response)
        for (let i = 0; i < responseObject.hourly.time.length; i++) {
          if (responseObject.hourly.time[i] > responseObject.current.time) {
            weatherForecastDrawer.iconSource = weatherCodeInformation[responseObject.hourly.weather_code[i]].day.image
            temperatureButton.text = responseObject.hourly.temperature_2m[i] + responseObject.hourly_units.temperature_2m
            weatherForecastText = qsTr("Weather for the next hour:") + " " + weatherCodeInformation[responseObject.hourly.weather_code[i]].day.description
            mainWindow.displayToast(weatherForecastText)
            break
          }
        }
      }
    }

    request.open("GET", "https://api.open-meteo.com/v1/forecast?latitude=" + info.latitude + "&longitude=" + info.longitude + "&current=temperature_2m&hourly=temperature_2m,rain,weather_code,cloud_cover&forecast_days=2")
    request.send();
  }

  Connections {
    target: position

    function onActiveChanged() {
      if (position.active) {
        // 10 second check to acquire a first forecast
        fetchWeatherTimer.interval = 10000
        fetchWeatherTimer.restart()
      } else {
        fetchWeatherTimer.stop()
      }
    }
  }

  Component.onCompleted: {
    iface.addItemToPluginsToolbar(weatherForecastDrawer)

    if (position.active) {
      fetchWeatherTimer.interval = 10000
      fetchWeatherTimer.restart()
    } else {
      fetchWeatherTimer.stop()
    }
  }
}
