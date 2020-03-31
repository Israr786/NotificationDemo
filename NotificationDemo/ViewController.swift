//
//  ViewController.swift
//  NotificationDemo
//
//  Created by Israrul on 3/30/20.
//  Copyright © 2020 Israrul Haque. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let content = UNMutableNotificationContent()
        content.title = "Demo Title"
        content.body = "Testing Message body"
        content.badge = 1
        content.subtitle = "Testing Subtitle"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "DemoLN", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }


}

