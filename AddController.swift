import RealmSwift
import UIKit

let Item = TodoItem()

//データベースに要素を追加する処理
class AddController: UIViewController {

    @IBOutlet weak var TodoMainField: UITextView!
    
    @IBOutlet weak var TodoTitleField: UITextField!
    
    @IBOutlet weak var TodoTagField: UITextField!
    
    @IBAction func TodoAddButton(_ sender: Any) {
        
        
        //ここでデータベースを読み込む　しないと2個以上追加するときに落ちる
        let realm = try! Realm()
        let Item = TodoItem()
        
        Item.title = TodoTitleField.text!
        
        Item.tag = TodoTagField.text!
        
        Item.main = TodoMainField.text!
        
        TodoTitleField.text = ""
        TodoTagField.text = ""
        TodoMainField.text = ""
        
        let Items = List<TodoItem>()
        Items.append(Item)
        
        //データベースに追加確定する処理を行う
        try! realm.write{
            realm.add(Items)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TodoMainField.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
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
