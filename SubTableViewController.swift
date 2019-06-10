

import UIKit


class SubTableViewController: UIViewController {
    
    @IBOutlet weak var NavigaionItem: UINavigationBar!
    var text1: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        print(text1 as Any)
        navigationItem.title = text1
    }
    
    
    
}
