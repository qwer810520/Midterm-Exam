//
//  DetailViewController.swift
//  MovieApp
//
//  Created by 楷岷 張 on 2017/3/24.
//  Copyright © 2017年 楷岷 張. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var movieName:String?
    var inputMovieImage:String?
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = movieName
        if let inputImage = inputMovieImage {
            movieImage.image = UIImage(named: inputImage)
        }
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
