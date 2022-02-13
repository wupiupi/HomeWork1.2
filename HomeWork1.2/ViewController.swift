import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var changeColorBtnView: UIButton!
    
    override func viewDidLoad() { //Эта функция создана для работы с внешним видом эл-тов?
        super.viewDidLoad()
        
        //Setting corner radius for our lights
        redLightView.layer.cornerRadius = 38
        yellowLightView.layer.cornerRadius = 38
        greenLightView.layer.cornerRadius = 38
        
        //Setting alpha for lights
        redLightView.alpha = 0.1
        yellowLightView.alpha = 0.1
        greenLightView.alpha = 0.1
        
        //Setting corner radius for button
        changeColorBtnView.layer.cornerRadius = 10
    }
    
    @IBAction func changeColorBtnAction(_ sender: Any) {
        
        changeColorBtnView.setTitle("Change color!", for: .normal)
        
        if redLightView.alpha == 1 {
            
            redLightView.alpha = 0.1
            yellowLightView.alpha = 1
            
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.1
            greenLightView.alpha = 1
            
        } else {
            greenLightView.alpha = 0.1
            redLightView.alpha = 1
        }
    }
    
}

