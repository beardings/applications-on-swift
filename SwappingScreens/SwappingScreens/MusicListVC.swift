//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Nikolas Ponomarov on 23.08.17.
//  Copyright © 2017 Nikolas Ponomarov. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }
    
    // оптимизация перехода с страницы на предыдущую без накладывания view один на одного
    @IBAction func BackBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // проверка индефикатора ссылки на следующий экзан и отправка юзером данных на песню
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Wicked games"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    // функция подготовки или же проверки следующего экрана любым отправителем на совпадение назначения или совпадения индефикатора перехода + передача данных отправщиком
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
              destination.selectedSong = song
            }
        }
    }

}
