//
//  ViewController.swift
//  Hometasks
//
//  Created by Виктор Васильков on 15.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    let x = [(1, "x"), (4, "y"), (6, "a")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(sortedArrayForHomeTask(x))
        print(dirtyOption(x))
    }
// MARK: - HomeTask4
    
    func sortedArrayForHomeTask(_ Array: [(Int, String)]) -> [(Int, String)] {
        let NewArray = Array.map { element in
            (element.0 * element.0, element.1)
        }.filter { element in
            element.0 % 2 == 0
        }.sorted { leftEl, rightEl in
            leftEl.1 < rightEl.1
        }
        return NewArray
    }
    
    func dirtyOption(_ Array: [(Int, String)]) -> [(Int, String)] {
        return (x.map { ($0.0 * $0.0, $0.1) }.filter { $0.0 % 2 == 0 }
                    .sorted {$0.1 < $1.1 } )
    }
    
// MARK: - HomeTask5

}

