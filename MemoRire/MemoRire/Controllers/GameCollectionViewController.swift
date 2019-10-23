import UIKit

private let reuseIdentifier = "Cell"

class GameCollectionViewController: UICollectionViewController{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("yo")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {

        //self.collectionView.register(myCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }


    // MARK: UICollectionViewDataSource
    //let vari:String = "1.JPG"
    let arrayPicture:[String] = ["1","2","3","4","5"]

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayPicture.count
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        print("yoyo")
        return 1
        
    }


//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of items
//        return 0
//    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! myCell
        cell.configure(with: arrayPicture[indexPath.row])
        
        print("yoyoyo")
        // Configure the cell
    
        return cell
    }

}
