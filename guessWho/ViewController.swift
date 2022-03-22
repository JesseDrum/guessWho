
import UIKit

class ViewController: UIViewController {
    
    
    var count = 0


  
    
    var teachers = [
        ["Name": "Mr. Walter", "Third Floor": true, "Female": false, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": true],
        ["Name": "Ms. Laskaris", "Third Floor": true, "Female": true, "Math Teacher": true, "English Teacher": false, "Science Teacher": false, "History Teacher": false, "Language Teacher": false],
        ["Name": "Ms. Grady", "Third Floor": false, "Female": true, "Math Teacher": false, "English Teacher": true, "Science Teacher": false, "History Teacher": false, "Language Teacher": false]
    ]
     
  
    


    
    
    
    
    
    var game = [Question]()
    var currentQuestion = Question(text: "default")

    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var buttonYes: UIButton!
    
    @IBOutlet weak var buttonNO: UIButton!
    

    @IBOutlet weak var buttonIDK: UIButton!
    
    var properties = ["Female", "Math Teacher","English Teacher", "Science Teacher", "History Teacher", "Language Teacher","Second Floor", "Third Floor", ]


  
    
    override func viewDidLoad() {
        questionsForGAME()
        loadQuestion(question: count)

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "one" {
            let destination = segue.destination as! UserinputView
            destination.games = teachers
            
        }
      
    }
    
    func questionsForGAME()
    {
        game.append(Question(text: "Are they a math teacher?"));
        game.append(Question(text: "Are they on the third floor"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Is your teacher a female?"));
    }
    
    
    
    func loadQuestion(question: Int) {
        if teachers.count > 1 {
            myLabel.text = game[count].text

        }
        
        }
    
    
    
    
    
    
    
    
    
     
    
    
    func check(answer: Bool, property: String)
    {
   
        print("Before filter \(teachers.count)")
        for i in stride(from: teachers.count-1, through: 0, by: -1) {
            let teacherAnswer = teachers[i][property] as! Bool
            
            if answer != teacherAnswer
            {
                teachers.remove(at: i)
            }
            
        }
        print("After filter \(teachers.count)")
        if teachers.count == 1
        {
            print("It's your teacher \(teachers[0]["Name"] as! String)")
            myLabel.text = "It's your teacher \(teachers[0]["Name"] as! String)?"
            
            
            
        }
        
        
//
//        if count > properties.count-1
//        {
//            count = 0
//
//        }
//
    }
    
    @IBAction func yesButton(_ sender: Any) {
        check(answer: true, property: properties[count])
        count += 1

        loadQuestion(question: count)
        
        if teachers.count < 1
        {
            YesAlerts()
        }
        
        
    }

    
    @IBAction func noButton(_ sender: Any) {
        check(answer: false, property: properties[count])
        count += 1
        loadQuestion(question: count)
        
      if teachers.count < 1
      {
//            performSegue(withIdentifier: "one", sender: self)
            NoAlerts()
      }

        }
        
        func YesAlerts()
        {
            let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in
                print("PLAY AGAIN")
            }))
          
        }
        
        func NoAlerts()
        {
            let alertController = UIAlertController(title: "Add new tag", message: nil, preferredStyle: .alert)
                 let confirmAction = UIAlertAction(title: "Add", style: .default) { (_) in
                     if let txtField = alertController.textFields?.first, let text = txtField.text {
                         // operations
                         print("Text==>" + text)
                     }
                 }
                 let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
                 alertController.addTextField { (textField) in
                     textField.placeholder = "Tag"
                 }
                 alertController.addAction(confirmAction)
                 alertController.addAction(cancelAction)
                 self.present(alertController, animated: true, completion: nil)
        }
    
    
    func presentAlertController() {
        let alertController = UIAlertController(title: "Login", message: nil, preferredStyle: .alert)
        self.present(alertController, animated: true)
    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        self.presentAlertController()
//    }
//
    
    }
    
    
    
    
    
    
    
    
    
    
    


struct Question{
    let text: String
}




