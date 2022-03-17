
import UIKit

class ViewController: UIViewController {
    
    
    
    var game = [Question]()
    var currentQuestion = Question(text: "default")

    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var buttonYes: UIButton!
    
    @IBOutlet weak var buttonNO: UIButton!
    

    @IBOutlet weak var buttonIDK: UIButton!
    

    var teachers = [
        ["Name": "Mr. Walter", "Third Floor": true, "Female": false, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": true],
        ["Name": "Ms. Laskaris", "Third Floor": true, "Female": true, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": false],
        ["Name": "Sabrina", "Third Floor": true, "Female": true, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": true, "Language Teacher": true]
    ]
     
    
    
    override func viewDidLoad() {
        questionsForGAME()
        loadQuestion(question: game.first!)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func questionsForGAME(){
        game.append(Question(text: "Are they a language teacher?"));
        game.append(Question(text: "Are they a history teacher?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));


    
    
}
    
    
    
    func loadQuestion(question: Question) {
        myLabel.text = question.text
        currentQuestion = question
        }
    
    
    
    
    
    
    
    
    
    
    func check(answer: Bool, property: String)
    {
        
        // loop through all teachers in arrray of dictionarys
        
        // remove any that dont have the same answer
        
        
        for i in stride(from: teachers.count-1, through: 0, by: -1) {
            let teacherAnswer = teachers[i][property] as! Bool
            
            if answer != teacherAnswer
            {
                teachers.remove(at: i)
            }
            
        }
        if teachers.count == 1
        {
            myLabel.text = ("Your teacher is \(teachers[0]["Name"] as! String)")
        }
        
    }
    
    var count = 0
    @IBAction func yesButton(_ sender: Any) {
        count += 1
        
        if count == 1 {
            check(answer: true, property: "Language Teacher")
        }
        if count == 2 {
            check(answer: true, property: "History Teacher")
        }
        if count == 3 {
            check(answer: true, property: "Science Teacher")
        }
        if count == 4 {
            check(answer: true, property: "English Teacher")
        }
        if count == 5 {
            check(answer: true, property: "Math Teacher")
        }
        if count == 6 {
            check(answer: true, property: "Female")
        }
        if count == 7 {
            check(answer: true, property: "Third Floor")
        }
        
        
        
        
    }
    
    @IBAction func noButton(_ sender: Any) {
    count += 1
    
        
        
        if count == 1 {
            check(answer: false, property: "Language Teacher")
        }
        if count == 2 {
            check(answer: false, property: "History Teacher")
        }
        if count == 3 {
            check(answer: false, property: "Science Teacher")
        }
        if count == 4 {
            check(answer: false, property: "English Teacher")
        }
        if count == 5 {
            check(answer: false, property: "Math Teacher")
        }
        if count == 6 {
            check(answer: false, property: "Female")
        }
        if count == 7 {
            check(answer: false, property: "Third Floor")
        }
        
        
    }
    
    
}

struct Question{
    let text: String
}




