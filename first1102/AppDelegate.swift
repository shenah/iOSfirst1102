//
//  AppDelegate.swift
//  first1102
//
//  Created by 503-03 on 2018. 11. 2..
//  Copyright © 2018년 shenah. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    //앱이 사용자에게 화면으로 표시되기 직전에 호출되는 메소드
    //앱이 실행된 직후에 진행할 커스터마이징이나 초기화를 위한 코드를 작성
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //LaunchScreen 화면을 1초 동안 유지
        sleep(1)
        // Override point for customization after application launch.
        return true
    }

    //실행된 앱이 포그라운드 상태 즉 화면 전면에 표시될 때 호출되는 메소드
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    //사용자가 Home 버튼을 클릭하거나 전화 통화를 시도할 때 먼저 호출됨 1
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    //사용자가 Home 버튼을 클릭하거나 전화 통화를 시도할 때 2
    //앱이 백그라운드 상태에 진입했을 때 호출되는 메소드로 어느 순간에 앱이 종료된다는 의미이므로 잃어서는 안되는 사용자 데이터를 종료 전에 미리 저장하거나 공유 자원을 점유하고 있었다면 이를 해제하는 코드를 작성해야 주어야 합니다.
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    //앱이 종료되기 직전에 호출되는 메소드 - 종료 전의 작업이나 백그라운드에서의 작업을 수행합니다.
    //Background 상태에서 Suspended 상태로 진입할 때 수행
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    //백그라운드 상태에서 foreground 상태로 진입할 때 수행
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }






}

