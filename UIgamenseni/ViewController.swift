//
//  ViewController.swift
//  UIgamenseni
//
//  Created by 楠瀬大志 on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        
        label.text = String(count)
        
        if count == 10{
            
            count = 0
            //画面遷移する
//            performSegue(withIdentifier: "next", sender: nil)
            let nextVC = storyboard?.instantiateViewController(withIdentifier: "next")  as! NextViewController
            nextVC.count2 = count
            navigationController?.pushViewController(nextVC, animated: true)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.count2 = count
    }
    
}

