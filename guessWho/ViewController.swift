
import UIKit

class ViewController: UIViewController {
    
    
    
    var game = [Questions]()
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var buttonYes: UIButton!
    
    @IBOutlet weak var buttonNO: UIButton!
    

    @IBOutlet weak var buttonIDK: UIButton!
    

    var teachers = [
        ["Name": "Mr. Walter", "Third Floor": true, "Female": false, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": false],
        ["Name": "Ms. Laskaris", "Third Floor": true, "Female": true, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": false]
    ]
     
    
    
    override func viewDidLoad() {
        <#code#>
    }
    
    
    func questionsForGAME(){
        game.append(Questions(text: "Are they a language teacher?"));
        game.append(Questions(text: "Are they a history teacher?"));
        game.append(Questions(text: "Is your teacher a female?"));
        game.append(Questions(text: "Is your teacher a female?"));
        game.append(Questions(text: "Is your teacher a female?"));
        game.append(Questions(text: "Is your teacher a female?"));
        game.append(Questions(text: "Is your teacher a female?"));


    
    
        
    
    
    }
    
    
    
    
    
    
    func check(answer: Bool, property: String)
    {
        
        // loop through all teachers in arrray of dictionarys
        
        // remove any that dont have the same answer
        
        for i in stride(from: teachers.count, through: 0, by: -1) {
            let teacherAnswer = teachers[i][property] as! Bool
            
            if teacherAnswer != answer
            {
                teachers.remove(at: i)
            }
            
        }
        if teachers.count == 1
        {
            print("Your teacher is \(teachers[0]["Name"] as! String)")
        }
        
    }
    
    
    @IBAction func yesButton(_ sender: Any) {
   
        
    }
    
    @IBAction func noButton(_ sender: Any) {
  
        
    }
    
    
}

struct Questions{
    let text: String
}




