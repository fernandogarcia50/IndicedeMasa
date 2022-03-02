//
//  ViewController.swift
//  IndiceMasa
//
//  Created by Mac11 on 25/02/22.
//

import UIKit

class ViewController: UIViewController {
    var cerebroCalculadora=CerebroCalculadora()
    @IBOutlet weak var varlorAltura: UILabel!
    @IBOutlet weak var valorPeso: UILabel!
    
    @IBOutlet weak var altura: UILabel!
    
    var peso:Float=75.0
    var altura_persona:Float=1.60
    var imc:Double?
    @IBOutlet weak var valorAltura: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderPeso(_ sender: UISlider) {
        valorPeso.text="\(String(format: "%.1f", sender.value))kg"
        peso=Float(sender.value)
    }
    
    @IBAction func sliderAltura(_ sender: UISlider) {
        altura.text="\(String(format: "%.1f", sender.value))cm"
        altura_persona=Float(sender.value)/100
       
    }
    @IBAction func calcularInfo(_ sender: UIButton) {
        cerebroCalculadora.calcularIMC(peso: peso, altura: altura_persona)
        
        performSegue(withIdentifier: "mandar", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let objDestino=segue.destination as! pantallaDosController
        objDestino.indice=cerebroCalculadora.retornarValor()
        objDestino.mensaje=cerebroCalculadora.avisar()
        objDestino.color=cerebroCalculadora.retornarColor()
        objDestino.imagenMostrarTexto=cerebroCalculadora.retornarImagen()
    }
    
}

