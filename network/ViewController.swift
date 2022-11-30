//
//  ViewController.swift
//  network
//
//  Created by digital on 30/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRandomCat(_ sender: UIButton) {
        
        if let url = URL(string: "https://cataas.com/cat/says/hello%20world!"){
            let urlrequest = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: urlrequest) { data, response, err in
                if let d = data {
                    self.imageView.image = UIImage(data: d)
                }
            }.resume()
        }
    }
}

