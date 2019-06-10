import UIKit
import RealmSwift

class ContentsViewController: UIViewController {
    
    let realm = try! Realm()
    
    @IBOutlet weak var titleBar: UINavigationItem!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var tagLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        titleBar.title = results[cellNumber].title
        
        tagLabel.text = results[cellNumber].tag
        
        textLabel.text = results[cellNumber].main
    }

    
    
}
