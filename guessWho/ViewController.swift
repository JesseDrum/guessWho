
import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var buttonYes: UIButton!
    
    @IBOutlet weak var buttonNO: UIButton!
    

    @IBOutlet weak var buttonIDK: UIButton!
    
    


    
    
    
    
    
    
    
    
    
    
    
    
   
    

    
    
                    
    
    
    
                    
    
    
        
    

    
    
    var questionone: [Question] = [
       Question(numQuestion: 1, question: "Is your teacher a female?"),

        Question(numQuestion: 2, question: "Do they teach Math?"),

        Question(numQuestion: 3, question: "Do they teach Science?"),

        Question(numQuestion: 4, question: "Do they teach History?"),
//
        Question(numQuestion: 5, question: "Are they on the third floor?")

    ]

    //1 = yes 2 = no 3 = idk

    var teacher: [Teacher] = [
        Teacher(teacherN: "Mr. Walter", answer: [1: false, 2: true, 3: false, 4: false, 5: true]),
        Teacher(teacherN: "Mr Laskaris", answer: [1: true, 2: true, 3: false, 4: false, 5: true]),
        Teacher(teacherN: "Mr Laskaris", answer: [1: true, 2: true, 3: false, 4: false, 5: true])
    ]
    
    
    
    func checkAns(answer: Bool, question: Int)
    {
        if answer == true{
                    }
        else if answer == false{
            
        }
        
    }
    
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var count = 0
    @IBAction func yesButton(_ sender: UIButton) {
        
        count += 1
        checkAns(answer: true, question: count)
        
        
    }
    
    
    
    
    @IBAction func noButton(_ sender: UIButton) {
        
//        buttonNO = 2
        
    }
    
    
    
    
    
    
    @IBAction func idkButton(_ sender: UIButton) {
        
//        buttonIDK = 3
    
    
    

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
