//
//  ViewController.swift
//  JetAlgilayicilar
//
//  Created by onur yılmaz on 15.02.2022.
//

import UIKit
var isşakşuka = true

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!  
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.isUserInteractionEnabled = true
        
        let jetalgilayicilar = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(jetalgilayicilar)
    }
     
    @objc func changePic(){
        if isşakşuka == true{
            imageView.image = UIImage(named: "şakşuka")
            myLabel.text = "Antalya Suluada"
            isşakşuka = false
        }
        else{
        
        imageView.image = UIImage(named: "second")
        myLabel.text = "Kapadokya"
            isşakşuka = true
    }
}
}
