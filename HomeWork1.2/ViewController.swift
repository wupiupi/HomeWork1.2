//
//  ViewController.swift
//  HomeWork1.2
//
//  Created by Paul on 12.02.22.
//

import UIKit
//MARK: Help me pls: Можно ли собрать картинку светофора и мои кружки в один стэк, чтобы можно было адаптировать его под любой экран?
class ViewController: UIViewController {
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLighView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var changeColorBtnView: UIButton!
    
    
    override func viewDidLoad() { //Если я понял правильно, эта функция, унаследованная от класса вью контроллер, предназначена для визуальных преобразований
        super.viewDidLoad()
        
        //Setting corner radius for traffic lights
        redLightView.layer.cornerRadius = 51
        yellowLighView.layer.cornerRadius = 51
        greenLightView.layer.cornerRadius = 51
        
        //Get the right colors alpha
        redLightView.alpha = 1
        yellowLighView.alpha = 0.1
        greenLightView.alpha = 0.1
        
        //Setting corner radius for button
        changeColorBtnView.layer.cornerRadius = 10
    }
    @IBAction func changeColorBtnAct(_ sender: Any) {
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.1
            yellowLighView.alpha = 1
        } else if yellowLighView.alpha == 1 {
            yellowLighView.alpha = 0.1
            greenLightView.alpha = 1
        } else {
            greenLightView.alpha = 0.1
            redLightView.alpha = 1
        }
    }
}

