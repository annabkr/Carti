//
//  ListViewController.swift
//  Carti

import UIKit

class ListViewController: UITableViewController {
    
    var items = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
}


func save() {
    if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
        let shoppingList = ShoppingList(entity: ShoppingList.entity(), insertInto: context)
        
        if let itemName = shoppingList.name {
            shoppingList.name = itemName
        }
        
        try? context.save()
    }
}
