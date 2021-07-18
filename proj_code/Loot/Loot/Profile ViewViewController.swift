//
//  Profile ViewViewController.swift
//  Loot
//
//  Created by Rosnel Leyva-Cortés on 7/17/21.
//

import UIKit

class Profile_ViewViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        super.view.backgroundColor = UIColor .systemBackground
        loadUI()
        
       
        
    }
    
    
    private func loadUI(){
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 50, width: 100, height: 20)
        label.text = "Profile"
        label.textAlignment = .center
        view.addSubview(label)
        
        //loading usr
        let temp_usr = user_obj.init("Cabot", biography: "test bio")
        let temp_factor = Factor.init("Sports", sub: "I like tennis")
        temp_usr?.put(temp_factor)
        
        //load name
        let name = UILabel()
        name.frame = CGRect(x: 275, y: 150, width: 100, height: 20)
        name.text = temp_usr?.name
        name.textAlignment = .center
        view.addSubview(name)
        
        //load bio
        let bio = UILabel()
        bio.frame = CGRect(x: 275, y: 200, width: 100, height: 20)
        bio.text = temp_usr?.bio
        bio.textAlignment = .center
        view.addSubview(bio)
        
        //load Factors
        let category = UILabel()
        category.frame = CGRect(x: 150, y: 400, width: 100, height: 20)
        category.text = temp_factor?.category
        category.textAlignment = .center
        view.addSubview(category)
        
        let sub = UILabel()
        sub.frame = CGRect(x: 150, y: 430, width: 100, height: 20)
        sub.text = temp_factor?.subtitle
        sub.textAlignment = .center
        view.addSubview(sub)
        
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
