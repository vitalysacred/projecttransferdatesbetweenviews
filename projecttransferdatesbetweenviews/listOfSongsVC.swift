//
//  listOfSongsVC.swift
//  projecttransferdatesbetweenviews
//
//  Created by Vitaly Sacred on 14/09/16.
//  Copyright © 2016 Vitaly Sacred. All rights reserved.
//

import UIKit

class listOfSongsVC: UIViewController {


    @IBOutlet weak var textFieldSongTitleInput: UITextField!
    
    private var _clearTextField: Int = 1
    
    
    var clearTextField: Int {
        get {
            return _clearTextField
        } set {
            _clearTextField = 0
        }
     }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if _clearTextField == 0 {
            textFieldSongTitleInput.text = ""
        }

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScrean(_ sender: UIButton) {
        performSegue(withIdentifier: "playSongVC", sender: textFieldSongTitleInput.text)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destination as? playSongVC {
                if let song = sender as? String {
                    destination.selectedSong = song
                }
            }
        
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


