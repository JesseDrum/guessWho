
import UIKit

class ViewController: UIViewController {
    
    
    var count = 0

 
    @objc func noClick(_sender: Any)
    {

    }
    @objc func yesClick(_sender: Any)
    {
    
    }
    
    
    
    var game = [Question]()
    var currentQuestion = Question(text: "default")

    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var buttonYes: UIButton!
    
    @IBOutlet weak var buttonNO: UIButton!
    

    @IBOutlet weak var buttonIDK: UIButton!
    
    var properties = ["Female", "Math Teacher","English Teacher", "Science Teacher", "History Teacher", "Language Teacher","Second Floor", "Third Floor", ]


    var teachers = [
        ["Name": "Mr. Walter", "Third Floor": true, "Female": false, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": true],
        ["Name": "Ms. Laskaris", "Third Floor": true, "Female": true, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": false],
        ["Name": "Sabrina", "Third Floor": true, "Female": true, "Math Teacher": false, "English Teacher": false, "Science Teacher": false, "History Teacher": true, "Language Teacher": true]
    ]
     
  
    
    override func viewDidLoad() {
        questionsForGAME()
//        loadQuestion(question: game.first!)
        loadQuestion(question: count)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func questionsForGAME(){
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Are they a math teacher?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));


    
    
}
    
    
    
    func loadQuestion(question: Int) {
        myLabel.text = game[count].text
        
        }
    
    
    
    
    
    
    
    
    
     
    
    
    func check(answer: Bool, property: String)
    {
        
        // loop through all teachers in arrray of dictionarys
        
        // remove any that dont have the same answer
//        myLabel.text = game[count+1]
        
        for i in stride(from: teachers.count-1, through: 0, by: -1) {
            let teacherAnswer = teachers[i][property] as! Bool
            
            if answer != teacherAnswer
            {
                teachers.remove(at: i)
            }
            
        }
        if teachers.count == 1
        {
            print("It's your teacher \(teachers[0]["Name"] as! String)")
            myLabel.text = "It's your teacher \(teachers[0]["Name"] as! String)?"
            
            
            let yesButton = UIButton(frame: CGRect(x: 50, y: 590, width: 100, height: 50))
            yesButton.setTitle("YesButton", for: .normal)
            self.view.addSubview(yesButton)
            yesButton.addTarget(self, action: #selector(yesClick), for: .touchUpInside)
            
            let noButton = UIButton(frame: CGRect(x: 250, y: 590, width: 100, height: 50))
            noButton.setTitle("NoButton", for: .normal)
            self.view.addSubview(noButton)
            noButton.addTarget(self, action: #selector(noClick), for: .touchUpInside)
        }
        
        
       
        if count > properties.count-1
        {
            count = 0

        }
        
    }
    
    @IBAction func yesButton(_ sender: Any) {
        check(answer: true, property: properties[count])
        count += 1
        if count == properties.count
        {
            count = 0
        }
        loadQuestion(question: count)
    }
    
    @IBAction func noButton(_ sender: Any) {
        check(answer: false, property: properties[count])
        count += 1
        if count == properties.count
        {
            count = 0
        }
        loadQuestion(question: count)
    }
    
    
    
    
    
    
    
    
    
    
    
}

struct Question{
    let text: String
}




