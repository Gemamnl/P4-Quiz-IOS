//
//  QuizViewController.swift
//  P4 Quiz10
//
//  Created by g924 DIT UPM on 20/11/2019.
//  Copyright © 2019 g924 DIT UPM. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController ,UITextFieldDelegate {
    
    var quiz:QuizItem!

    @IBOutlet weak var tipsLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var attachmentImageView: UIImageView!
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    @IBOutlet weak var responseTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        questionLabel.text = quiz.question
       
        
        //let arr = quiz.tips[0].map{ (string) -> string in
            //return string
       // }.joined()
       // self.tipsLabel.text = arr
        
        
        
        
        
        authorLabel.text = quiz.author?.username
        
        photoImageView.image = UIImage(named: "downloading")!
        if let url = quiz.author?.photo?.url{
                   photoImageView.image = image(url: url)
             }
        
        attachmentImageView.image = UIImage(named: "downloading")!
        if let url = quiz.attachment?.url{
              attachmentImageView.image = image(url: url)
            
        }
        
    }
    
    
    @IBAction func sacabo(_ sender: UITextField) {

        let resp = sender.text?.lowercased()
        if resp == quiz.answer.lowercased(){
            alert (msg: "oleeeoleee :)")
            
        }else{
            alert(msg:"huele a julio :(")
        }

    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        comprueba()
    }
    
    @IBAction func comprueba() {
        
        let resp = responseTextField.text?.lowercased()
        if resp == quiz.answer.lowercased(){
            alert(msg:"oleeeoleee :)")
            
        }else{
            alert(msg:"road to julio :(")
        }
        
        
        
        
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
