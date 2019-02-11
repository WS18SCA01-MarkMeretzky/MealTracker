//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Mark Meretzky on 2/6/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {   //computed property, pp. 146-148
        return [          //Return an array of three Meal instances.
            Meal(name: "breakfast", food: [
                Food(name: "Milk", description: "from cow"),
                Food(name: "Cereal", description: "crunchy granola"),
                Food(name: "Yogurt", description: "very sour")
            ]),

            Meal(name: "lunch", food: [
                Food(name: "Tuna", description: "sandwich"),
                Food(name: "Orange Juice", description: "orange")
            ]),

            Meal(name: "supper", food: [
                Food(name: "Steak", description: "meat")
            ])
        ];
    }

    override func viewDidLoad() {
        super.viewDidLoad();

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath);
        
        // Configure the cell...
        let meal: Meal = meals[indexPath.section];
        let food: Food = meal.food[indexPath.row];
        cell.textLabel?.text = food.name;
        cell.detailTextLabel?.text = food.description;
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name;
    }

}
