//
//  Settings View.swift
//  Loot
//
//  Created by Rosnel Leyva-Cortés on 7/17/21.
//

import UIKit

class Settings_View: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        super.view.backgroundColor = UIColor .systemBackground
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 50, width: 100, height: 20)
        label.text = "Settings"
        label.textAlignment = .center
        view.addSubview(label)
        
        let text = UILabel()
        text.frame = CGRect(x: 50, y: 150, width: 200, height: 50)
        text.text = "Increased Data Sensitivity"
        view.addSubview(text)
        
        let conf = UISwitch()
        conf.frame = CGRect(x: 275, y: 160, width: 100, height: 20)
        view.addSubview(conf)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
