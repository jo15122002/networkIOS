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
        let res = NetworkManager.instance.download(urlString: "https://cataas.com/cat/says/hi", callBack: { image in
            self.imageView.image = image
        })
    }
}

