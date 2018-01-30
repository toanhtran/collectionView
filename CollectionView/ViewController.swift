//
//  ViewController.swift
//  CollectionView
//
//  Created by ToAnh T. Tran on 1/29/18.
//  Copyright © 2018 ToAnh T. Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var collectionData = ["Happy ⚡ ", "Tent ⛺", "Shrine ⛩", "Lucky ☘", "1 🏆", "2 🐸", "3 🍩", "4 😸", "5 🤡", "6 👾", "7 👻", "8 👩‍🎤", "9 🎸", "10 🍖", "11 🐯", "12 🌋"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return collectionData.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
		if let label = cell.viewWithTag(100) as? UILabel {
			label.text = collectionData[indexPath.row]
		}
		return cell
	}
	
}
