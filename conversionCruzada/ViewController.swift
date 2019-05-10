import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtDistancia: UITextField!
    
    @IBOutlet weak var unidadIni: UISegmentedControl!
    
    @IBOutlet weak var unidadFin: UISegmentedControl!
    
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func operar(_ sender: Any) {
        
        let firstU = unidadIni.selectedSegmentIndex
        let secondU = unidadFin.selectedSegmentIndex
        let distancia = Double(txtDistancia.text!)!
        
        let MaK : Double = 1.609344
        let MaM : Double = 1
        let MaY : Double = 1760
        let YaM : Double = 0.000568182
        let YaY : Double = 1
        let YaK : Double = 0.0009144
        let KaM : Double = 0.621371
        let KaY : Double = 1093.61
        let KaK : Double = 1

        
        
        if firstU == 0 && secondU == 0 {
          // De millas a millas
            let convertValue = distancia * MaM
            resultado.text = "\(convertValue) millas"
        }else if firstU == 0 && secondU == 1{
          // De millas a yardas
            let convertValue = distancia * MaY
            resultado.text = "\(convertValue) yardas"
        }else if firstU == 0 && secondU == 2{
          // De millas a kilometros
            let convertValue = distancia * MaK
            resultado.text = "\(convertValue) kilometros"
        }else if firstU == 1 && secondU == 0{
          // De yardas a millas
            let convertValue = distancia * YaM
            resultado.text = "\(convertValue) millas"
        }else if firstU == 1 && secondU == 1{
          // De yardas a yardas
            let convertValue = distancia * YaY
            resultado.text = "\(convertValue) yardas"
        }else if firstU == 1 && secondU == 2{
          // De yardas a kilometros
            let convertValue = distancia * YaK
            resultado.text = "\(convertValue) kilometros"
        }else if firstU == 2 && secondU == 0{
          // De kilometros a millas
            let convertValue = distancia * KaM
            resultado.text = "\(convertValue) millas"
        }else if firstU == 2 && secondU == 1{
          // De kilometros a yardas
            let convertValue = distancia * KaY
            resultado.text = "\(convertValue) yardas"
        }else if firstU == 2 && secondU == 2{
          // De kilometros a kilometros
            let convertValue = distancia * KaK
            resultado.text = "\(convertValue) kilometros"
        }else{
            print("error")
            resultado.text = "No se Pudo Operar"
        }
        
    }
    
}

