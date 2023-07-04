//
//  Model.swift
//  SettingsPage
//
//  Created by Admin on 28.06.23.
//

import UIKit

enum SettingsText: String {
    case airplaneMode = "Авиарежим"
    case wiFi = "Wi-Fi"
    case bluetooth = "Bluetooth"
    case mobileData = "Сотовая связь"
    case personHotspot = "Режим модема"
    case vpn = "VPN"
    case notifications = "Уведомления"
    case sounds = "Звуки, тактильные сигналы"
    case focus = "Не беспокоить"
    case screenTime = "Экранное время"
    case general = "Основные"
    case controlCentre = "Пункт управления"
    case display = "Экран и яркость"
    case homeScreen = "Экран «Домой»"
}

struct Settings: Hashable {
    var iconImage: UIImage
    var name: SettingsText
    var text: String
//    var switchButton: UISwitch
}

extension Settings {
    static var settings: [[Settings]] = [
        
        [
            Settings(iconImage: UIImage(named: "Plane") ?? UIImage(), name: .airplaneMode, text: ""),
            Settings(iconImage: UIImage(named: "Wifi") ?? UIImage(), name: .wiFi, text: "Не подключено"),
            Settings(iconImage: UIImage(named: "Bluetooth") ?? UIImage(), name: .bluetooth, text: "Вкл."),
            Settings(iconImage: UIImage(named: "Connection") ?? UIImage(), name: .mobileData, text: ""),
            Settings(iconImage: UIImage(named: "Hotspot") ?? UIImage(), name: .personHotspot, text: ""),
            Settings(iconImage: UIImage(named: "Vpn") ?? UIImage(), name: .vpn, text: "")
        ],
        
        [
            Settings(iconImage: UIImage(named: "Notifications") ?? UIImage(), name: .notifications, text: ""),
            Settings(iconImage: UIImage(named: "Sound") ?? UIImage(), name: .sounds, text: ""),
            Settings(iconImage: UIImage(named: "Moon") ?? UIImage(), name: .focus, text: ""),
            Settings(iconImage: UIImage(named: "Time") ?? UIImage(), name: .screenTime, text: "")
        ],
        
        [
            Settings(iconImage: UIImage(named: "Settings") ?? UIImage(), name: .general, text: ""),
            Settings(iconImage: UIImage(named: "Switch") ?? UIImage(), name: .controlCentre, text: ""),
            Settings(iconImage: UIImage(named: "Screen") ?? UIImage(), name: .display, text: ""),
            Settings(iconImage: UIImage(named: "HomeScreen") ?? UIImage(), name: .homeScreen, text: "")
        ]
        ]
    
}
