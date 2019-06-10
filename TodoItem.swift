//データベースの構造初期化
//形態を変える際はここを変更する

import Foundation
import RealmSwift

class TodoItem: Object {
    @objc dynamic var title: String = ""
    
    @objc dynamic var tag: String = ""
    
    @objc dynamic var main: String = ""
}
