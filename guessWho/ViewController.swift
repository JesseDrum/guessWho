
import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var buttonYes: UIButton!
    
    @IBOutlet weak var buttonNO: UIButton!
    

    @IBOutlet weak var buttonIDK: UIButton!
    
    

    var teacher = [
        ["Name": "Mr. Walter", "Third Floor": true, "Female": false, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": false],
        ["Name": "Ms. Laskaris", "Third Floor": true, "Female": true, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": false]
    ]
    
    
    
    
    var ans =
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    

    
    
      
    var questions: [Question] = [
       Question(numQuestion: 1, question: "Is your teacher a female?"),

        Question(numQuestion: 2, question: "Do they teach Math?"),

        Question(numQuestion: 3, question: "Do they teach Science?"),

        Question(numQuestion: 4, question: "Do they teach History?"),
        Question(numQuestion: 5, question: "Do they teach Compiter Science?"),
//
        Question(numQuestion: 6, question: "Are they on the third floor?")

    ]

    //1 = yes 2 = no 3 = idk

    var teacherOne: [Teacher] = [
        Teacher(teacherN: "Mr. Walter", answer: [1: false, 2: true, 3: false, 4: false, 5: true, 6: true]),
        Teacher(teacherN: "Mr Laskaris", answer: [1: true, 2: true, 3: false, 4: false, 5: false, 6: true]),
        Teacher(teacherN: "Mr Jackson", answer: [1: false, 2: true, 3: false, 4: false, 5: false, 6: true])
    ]
    
    
    
   
    
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    loadQuestion()
    }

    
    
    func loadQuestion(){
        myLabel.text = questions[count].question
    }
    
    @IBAction func yesButton(_ sender: UIButton) {
        
        count += 1
        if count >= questions.count {
            count = 0
            // display alert that we ran out questuons
        }
        loadQuestion()
        checkAns(answer: true, question: count)
        
        
    }
    
    
    
    
    @IBAction func noButton(_ sender: UIButton) {
        count += 1
        checkAns(answer: false, question: count)

    }
    
    
    
    
    
    
    @IBAction func idkButton(_ sender: UIButton) {
        
//        buttonIDK = 3
    
    
    

    }
    
    func checkAns(answer: Bool, question: Int)
    {
        var to_remove = [Any].self
        var ans: Bool
        
        if answer == true{
                    }
        else if answer == false{
            ans = false
        }
        
        for a in teacher
        {
//            if ans != teacher
//            {
//                to_remove.append(a)
//            }
        
            
        }
        
        
    }


}

struct Question {
    let numQuestion: Int
    let question: String
    
    
    
    
    
//    let text: String
//    let answers: [Answer]
}

struct Teacher {
    let teacherN: String
    
    let answer: [Int: Bool]
    
    
    
    
}
