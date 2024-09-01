//
//  CategoryViewController.swift
//  Todoey
//
//  Created by Eduardo Rodrigues on 31.08.24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import UIKit
import CoreData

class CategoryViewController: UITableViewController {
    
    var categories = [Category]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    // MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        
        cell.textLabel?.text = categories[indexPath.row].name
        
        return cell
    }
    
    // MARK: - Add New Categories
    
        @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
            
            var textField = UITextField()
            
            let alert = UIAlertController(title: "Add New Category", message: "", preferredStyle: preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Add", style: .default) { (action) in
                
                let newCategory = Category(context: self.context)
                newCategory.name = textField.text!
                
                self.categories.append(newCategory)
                
                saveCategories()
            
        }
            alert.addAction(action)
            
            alert.addTextField { (field) in
                textField = field
                textField.placeholder = "Add a new category"
            }
            
            present(alert, animated: true, completion: nil)
       
    }
    
    // MARK: - TableView Delegate Methods
    // MARK: - Data Manipulations Methods
    
}
