//
//  ViewController.swift
//  collection2
//
//  Created by R&W on 21/02/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
  
    var photo = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7") ,UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7")  ]
    var name = ["no1","no2","no3","no4","no5","no6","no7","no1","no2","no3","no4","no5","no6","no7","no1","no2","no3","no4","no5","no6","no7"]
    var select = -1
//    var arr = Array<String>()

    @IBOutlet weak var cv: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.img.image = photo[indexPath.row]
        cell.label2.text = name[indexPath.row]
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 10
        
        if select == indexPath.row{
            cell.rediobutton.image = UIImage(systemName: "circle.fill")
        }
        else{
            cell.rediobutton.image = UIImage(systemName: "circle")
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        select = indexPath.row
        cv.reloadData()
    }
}
