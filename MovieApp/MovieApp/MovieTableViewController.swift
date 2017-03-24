//
//  MovieTableViewController.swift
//  MovieApp
//
//  Created by 楷岷 張 on 2017/3/24.
//  Copyright © 2017年 楷岷 張. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var movie:[Movie] = [
        Movie(name: "我的少女時代", message: "由陳玉珊初次執導，宋芸樺、王大陸、李玉璽、簡廷芮所領銜主演，2015年度一部以1990年代為背景，校園愛情、青春懷舊為題材的愛情輕喜劇電影。 有別於2011年度紅極一時的《那些年，我們一起追的女孩》，本片劇情走向是以女性觀點出發作為其主要視角，非真人真事。", image: "test1" , time: "2015-08-13"),
        Movie(name: "我的少女時代", message: "由陳玉珊初次執導，宋芸樺、王大陸、李玉璽、簡廷芮所領銜主演，2015年度一部以1990年代為背景，校園愛情、青春懷舊為題材的愛情輕喜劇電影。 有別於2011年度紅極一時的《那些年，我們一起追的女孩》，本片劇情走向是以女性觀點出發作為其主要視角，非真人真事。", image: "test1" , time: "2015-08-13")
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "本週新片", style: .plain, target: nil, action: nil)

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell
        cell.nameLabel!.text = movie[indexPath.row].name
        cell.movieimage!.image = UIImage(named: movie[indexPath.row].image)
        cell.timeLabel!.text = "上映日期: \(movie[indexPath.row].time)"
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segue = segue.destination as! DetailViewController
        if let indexPath = self.tableView.indexPathForSelectedRow {
            segue.movieName = "\(movie[indexPath.row].message)"
            segue.inputMovieImage = "\(movie[indexPath.row].image)"
            segue.navigationItem.title = "\(movie[indexPath.row].name)"
        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
