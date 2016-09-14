//
//  playSongVC.swift
//  projecttransferdatesbetweenviews
//
//  Created by Vitaly Sacred on 14/09/16.
//  Copyright © 2016 Vitaly Sacred. All rights reserved.
//

import UIKit

class playSongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLbl.text = _selectedSong
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clearBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "listOfSongsVC", sender: 0)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destination as? listOfSongsVC {
                destination.clearTextField = 0
        }
            }
 
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
