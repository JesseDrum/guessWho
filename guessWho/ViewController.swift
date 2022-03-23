
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
    
    var properties = ["Female", "Math Teacher","English Teacher", "Science Teacher", "History Teacher", "Language Teacher","Art Teacher","Second Floor", "Third Floor", "First Floor", "H-Vision", "Marines", "Beard", "Micheal", "Black Wavy Hair", "Translationary", "AP Psych", "Blond Straight Hair", "U.S History", "Ceramics", "Last Name A TV Show", "AP Bio", "Curly Hair", "Marathons", "Anatomy and Physiology", "Classroom Near The Library", "AP Gov", "White Hair", "Librarian", "Health Teacher", "Business Teacher", "Security", "Child Development", "11th Grade English", "Ipad", "Karaoke", "Forensic Chemistry", "Suits", "Sewing Teacher", "Ginger", "No Hair", "Short" ]


    var teachers = [
        ["Name": "Mr. Walter", "Female": false,"Math Teacher": true, "Science Teacher": false, "English Teacher": false, "History Teacher": false,"Art Teacher": false,"Language Teacher": false,"Third Floor": true, "Second Floor": false, "First Floor": false, "H-Vision": false, "Marines": false, "Beard": false, "Micheal": false, "Black Wavy Hair": false, "Marathons": false, "Anatomy and Physiology": false, "Classroom near Library": false, "Translationary": false, "AP Psych": false, "Blonde Straight Hair": false, "U.S History": false, "Ceramics": false, "Last Name a TV Show": false, "AP Bio": false, "Curly Hair": false, "AP Gov": false, "White Hair": false, "Librarian": false, "Health Teacher": false, "Business Teacher": false, "Security": false, "Child Development": false, "11th Grade English": false, "Ipad": false, "Karaoke": false, "Forensic Chemistry": false, "Suits": false, "Sewing Teacher": false, "Ginger": false, "No Hair": true, "Short": false ],
        
        ["Name": "Ms. LasKaris", "Female": true,"Math Teacher": true, "Science Teacher": false, "English Teacher": false, "History Teacher": false,"Art Teacher": false,"Language Teacher": false,"Third Floor": true, "Second Floor": false, "First Floor": false, "H-Vision": false, "Marines": false, "Beard": false, "Micheal": false, "Black Wavy Hair": false, "Marathons": false, "Anatomy and Physiology": false, "Classroom near Library": false, "Translationary": false, "AP Psych": false, "Blonde Straight Hair": false, "U.S History": false, "Ceramics": false, "Last Name a TV Show": false, "AP Bio": false, "Curly Hair": false, "AP Gov": false, "White Hair": false, "Librarian": false, "Health Teacher": false, "Business Teacher": false, "Security": false, "Child Development": false, "11th Grade English": false, "Ipad": false, "Karaoke": false, "Forensic Chemistry": false, "Suits": false, "Sewing Teacher": false, "Ginger": false, "No Hair": false, "Short": true ],
        
        ["Name": "Mr. Althouse", "Female": false,"Math Teacher": false, "Science Teacher": false, "English Teacher": true, "History Teacher": false,"Art Teacher": false,"Language Teacher": false,"Third Floor": false, "Second Floor": false, "First Floor": true,"H-Vision": true, "Marines": false, "Beard": true, "Micheal": false, "Black Wavy Hair": false, "Marathons": false, "Anatomy and Physiology": false, "Classroom near Library": false, "Translationary": false, "AP Psych": false, "Blonde Straight Hair": false, "U.S History": false, "Ceramics": false, "Last Name a TV Show": false, "AP Bio": false, "Curly Hair": false, "AP Gov": false, "White Hair": false, "Librarian": false, "Health Teacher": false, "Business Teacher": false, "Security": false, "Child Development": false, "11th Grade English": false, "Ipad": false, "Karaoke": false, "Forensic Chemistry": false, "Suits": false, "Sewing Teacher": false, "Ginger": false, "No Hair": true, "Short": false ],
        
        ["Name": "Mr. Bilotti", "Female": false,"Math Teacher": false, "Science Teacher": true, "English Teacher": false, "History Teacher": false,"Art Teacher": false,"Language Teacher": false,"Third Floor": true, "Second Floor": false, "First Floor": false, "H-Vision": false, "Marines": true, "Beard": false, "Micheal": false, "Black Wavy Hair": false, "Marathons": false, "Anatomy and Physiology": false, "Classroom near Library": false, "Translationary": false, "AP Psych": false, "Blonde Straight Hair": false, "U.S History": false, "Ceramics": false, "Last Name a TV Show": false, "AP Bio": false, "Curly Hair": false, "AP Gov": false, "White Hair": false, "Librarian": false, "Health Teacher": false, "Business Teacher": false, "Security": false, "Child Development": false, "11th Grade English": false, "Ipad": false, "Karaoke": false, "Forensic Chemistry": false, "Suits": false, "Sewing Teacher": false, "Ginger": false, "No Hair": true, "Short": false ],
        
        ["Name": "Mr. Bruno", "Female": false,"Math Teacher": false, "Science Teacher": false, "English Teacher": false, "History Teacher": true,"Art Teacher": false,"Language Teacher": false,"Third Floor": false, "Second Floor": true, "First Floor": false, "H-Vision": false, "Marines": false, "Beard": true, "Micheal": false, "Black Wavy Hair": false, "Marathons": false, "Anatomy and Physiology": false, "Classroom near Library": false, "Translationary": false, "AP Psych": false, "Blonde Straight Hair": false, "U.S History": true, "Ceramics": false, "Last Name a TV Show": false, "AP Bio": false, "Curly Hair": false, "AP Gov": false, "White Hair": false, "Librarian": false, "Health Teacher": false, "Business Teacher": false, "Security": false, "Child Development": false, "11th Grade English": false, "Ipad": false, "Karaoke": false, "Forensic Chemistry": false, "Suits": false, "Sewing Teacher": false, "Ginger": false, "No Hair": true, "Short": false ],
        
       
        ["Name": "Ms. Cleary", "Female": true,"Math Teacher": true, "Science Teacher": false, "English Teacher": false, "History Teacher": false,"Art Teacher": false,"Language Teacher": false,"Third Floor": true, "Second Floor": false, "First Floor": false, "H-Vision": false, "Marines": false, "Beard": false, "Micheal": true, "Black Wavy Hair": false, "Marathons": false, "Anatomy and Physiology": false, "Classroom near Library": false, "Translationary": false, "AP Psych": false, "Blonde Straight Hair": false, "U.S History": false, "Ceramics": false, "Last Name a TV Show": false, "AP Bio": false, "Curly Hair": false, "AP Gov": false, "White Hair": false, "Librarian": false, "Health Teacher": false, "Business Teacher": false, "Security": false, "Child Development": false, "11th Grade English": false, "Ipad": false, "Karaoke": false, "Forensic Chemistry": false, "Suits": false, "Sewing Teacher": false, "Ginger": false, "No Hair": true, "Short": false ],
       
        
        ["Name": "Mrs. Colby", "Female": true,"Math Teacher": false, "Science Teacher": false, "English Teacher": false, "History Teacher": false,"Art Teacher": true,"Language Teacher": false,"Third Floor": false, "Second Floor": false, "First Floor": true, "H-Vision": false, "Marines": false, "Beard": false, "Micheal": false, "Black Wavy Hair": true, "Marathons": false, "Anatomy and Physiology": false, "Classroom near Library": false, "Translationary": false, "AP Psych": false, "Blonde Straight Hair": false, "U.S History": false, "Ceramics": true, "Last Name a TV Show": false, "AP Bio": false, "Curly Hair": false, "AP Gov": false, "White Hair": false, "Librarian": false, "Health Teacher": false, "Business Teacher": false, "Security": false, "Child Development": false, "11th Grade English": false, "Ipad": false, "Karaoke": false, "Forensic Chemistry": false, "Suits": false, "Sewing Teacher": false, "Ginger": false, "No Hair": true, "Short": false ],
        
        ["Name": "Mr. Cunicelli", "Female": false,"Math Teacher": false, "Science Teacher": false, "English Teacher": false, "History Teacher": false,"Art Teacher": false,"Language Teacher": true,"Third Floor": false, "Second Floor": false, "First Floor": true, "H-Vision": false, "Marines": false, "Beard": false, "Micheal": false, "Black Wavy Hair": false, "Marathons": false, "Anatomy and Physiology": false, "Classroom near Library": false, "Translationary": true, "AP Psych": false, "Blonde Straight Hair": false, "U.S History": false, "Ceramics": true, "Last Name a TV Show": false, "AP Bio": false, "Curly Hair": false, "AP Gov": false, "White Hair": false, "Librarian": false, "Health Teacher": false, "Business Teacher": false, "Security": false, "Child Development": false, "11th Grade English": false, "Ipad": false, "Karaoke": false, "Forensic Chemistry": false, "Suits": false, "Sewing Teacher": false, "Ginger": false, "No Hair": true, "Short": false ],
        
        
        ["Name": "Mr. Cunicelli", "Female": false,"Math Teacher": false, "Science Teacher": false, "English Teacher": false, "History Teacher": false,"Art Teacher": false,"Language Teacher": true,"Third Floor": false, "Second Floor": false, "First Floor": true, "H-Vision": false, "Marines": false, "Beard": false, "Micheal": false, "Black Wavy Hair": false, "Marathons": false, "Anatomy and Physiology": false, "Classroom near Library": false, "Translationary": true, "AP Psych": false, "Blonde Straight Hair": false, "U.S History": false, "Ceramics": true, "Last Name a TV Show": false, "AP Bio": false, "Curly Hair": false, "AP Gov": false, "White Hair": false, "Librarian": false, "Health Teacher": false, "Business Teacher": false, "Security": false, "Child Development": false, "11th Grade English": false, "Ipad": false, "Karaoke": false, "Forensic Chemistry": false, "Suits": false, "Sewing Teacher": false, "Ginger": false, "No Hair": true, "Short": false ],
]
     
    
    
    
  
    
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
    
    func questionsForGAME(){
        game.append(Question(text: "Is your teacher a female?"));
        game.append(Question(text: "Are they on the Third Floor?"));
        game.append(Question(text: "Are they a math teacher?"));
        game.append(Question(text: "Are they a Science teacher?"));
        game.append(Question(text: "Are they on the Second Floor?"));
        game.append(Question(text: "Are they an English Teacher?"));
        game.append(Question(text: "Are they a History Teacher?"));
        game.append(Question(text: "Are they on the First Floor?"));
        game.append(Question(text: "Are they a Language Teacher"));
        game.append(Question(text: "Are they an Art Teacher?"));


    
    
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
            myLabel.text = "Your teacher is \(teachers[0]["Name"] as! String)"
            
            
            
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




