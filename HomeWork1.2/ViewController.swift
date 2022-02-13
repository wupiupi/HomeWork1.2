import UIKit

// Plan:
// 1. IBOutlets
// 2. Properties
// 3. Life Cycle
// 4. Methods
// 5. Action

enum CurrentLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var changeColorBtnView: UIButton!
    // MARK: - Properties
    let lightIsOff: CGFloat = 0.1
    let lightIsOn: CGFloat = 1
    
    var currentLight: CurrentLight = .green
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        //Q: В этом методе мы работаем с внешним видом?
        
        /*
         A: это метод жизненого цикла вьюконтроллера - ты о нем узнаешь по-моему
         с 9 урока.
         B нем ты работаешь действительно с внешним видом - потому что все элементы
         загружаются c холста и только в этом методе они завершают загрузку и
         действительно становятся доступными
        */
        
        //Q: Спасибо :)
        
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Methods
    func setupUI() {
        setupColorForView()
    }
    
    func setupColorForView() {
        
        // Making circles out of squares
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        changeColorBtnView.layer.cornerRadius = 10
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
    }
    

    // MARK: - Actions

    @IBAction func changeColorBtnAction(_ sender: Any) {
        switch currentLight {
            
        case .red:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .yellow
            
        case .yellow:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            currentLight = .green
            
        case .green:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .red
        }
    }
}
