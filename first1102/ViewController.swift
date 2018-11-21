//
//  ViewController.swift
//  first1102
//
//  Created by 503-03 on 2018. 11. 2..
//  Copyright © 2018년 shenah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //타이머가 수행할 메소드
    @objc func timerProce(){
        //현재 날짜 가져오기
        let date = Date()
        //날짜를 문자열로 변경하기 위한 클래스의 객체 만들기
        let fomatter = DateFormatter()
        //문자열 형식 만들기
        fomatter.dateFormat = "yyyy-MM-dd ccc hh:mm:ss"
        //레이블에 날짜를 문자열로 변경해서 출력
        label.text = fomatter.string(from: date)
    }
    
    @IBOutlet weak var label: UILabel!
    @IBAction func click(_ sender: Any) {
        label.text = "안녕하세요"
    }
    
    
    @IBOutlet weak var textname: UITextField!
    @IBOutlet weak var txtage: UITextField!
    @IBOutlet weak var print: UITextField!
    
    @IBAction func commit(_ sender: Any) {
        let name = textname.text
        let age = txtage.text
        
        print.text = "이름:\(name!) 나이:\(age!)"
        
    }
    
    @IBAction func move(_ sender: Any) {
        txtage.becomeFirstResponder()
    }

    @IBAction func hide(_ sender: Any) {
        txtage.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textname.resignFirstResponder()
        txtage.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // view를 메모리에 로드한 후 출력하기 전에 수행할 내용
        //타이머 실행
        Timer.scheduledTimer(timeInterval: 1, target:self , selector: #selector(timerProce), userInfo: nil, repeats: true)
        
        //
        textname.becomeFirstResponder()
        
        
    }


}

