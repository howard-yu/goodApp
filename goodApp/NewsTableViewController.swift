//
//  NewsTableViewController.swift
//  goodApp
//
//  Created by Yu Shih-hao on 2019/7/13.
//  Copyright © 2019 Yu Shih-hao. All rights reserved.
//

import UIKit
import Firebase

class Item {
    var image = ""
    var name = ""
    var opening_hr = ""
    var address = ""
    var information = ""
    var namelabel = ""
    init(image: String, name: String, opening_hr: String, address: String, information : String, namelabel: String ) {
        self.image = image
        self.name = name
        self.opening_hr = opening_hr
        self.address = address
        self.information = information
        self.namelabel = namelabel
    }
}
class NewsTableViewController: UITableViewController {
    var news:[Item] = [
        Item(
            image: "下載.jpg",
            name: "我是米老鼠",
            opening_hr: "時間：\n11:00–21:00",
            address: "地址：台南市中西區保安路36號",
            information: "地址：台南市中西區保安路36號\n\n電話：06-2248134；06-2209246\n\n營業時間：11:00 - 21:00\n\n公休：週四\n\n推薦菜色：咖哩飯、雞肉飯、鴨肉羹\n\nFB：https://www.facebook.com/pages/阿娟咖哩飯鴨肉羹/329673023713547",
            namelabel: "米老鼠"
        ),
        Item(
            image: "唐老鴨.jpeg",
            name: "我是唐老鴨",
            opening_hr: "時間：\n11:00–21:00",
            address: "地址：台北市中西區保安路36號",
            information: "地址：台南市中西區保安路36號\n\n電話：06-2248134；06-2209246\n\n營業時間：11:00 - 21:00\n\n公休：週四\n\n推薦菜色：咖哩飯、雞肉飯、鴨肉羹\n\nFB：https://www.facebook.com/pages/阿娟咖哩飯鴨肉羹/329673023713547",
            namelabel: "唐老鴨"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    @IBAction func logoutBtn(_ sender: Any) {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                //dismiss(animated: true, completion: nil)
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginView")
                present(vc, animated: true, completion: nil)
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Goods", for: indexPath) as? NewsTableViewCell else {
            return UITableViewCell()
        }
        cell.goodImage.image = UIImage(named: news[indexPath.row].image)
        cell.goodNameLabel.text = news[indexPath.row].name
        cell.goodAddressLabel.text = news[indexPath.row].address
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let controller = segue.destination as? PreViewController
         let indexPath = self.tableView.indexPathForSelectedRow
        controller?.name = news[indexPath!.row].name
        controller?.information = news[(indexPath?.row)!].information
        controller?.imagename = news[(indexPath?.row)!].image
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
