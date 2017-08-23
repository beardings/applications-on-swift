//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Nikolas Ponomarov on 23.08.17.
//  Copyright © 2017 Nikolas Ponomarov. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong: String!
    
    // прием данных отправителем
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // перезапись данных в лейбл
        songTitleLbl.text = _selectedSong!
    }
}
