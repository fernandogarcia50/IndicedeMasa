//
//  pantallaDosController.swift
//  IndiceMasa
//
//  Created by Mac11 on 25/02/22.
//

import UIKit

class pantallaDosController: UIViewController {
   
    var indice:String?
    var mensaje:String?
    var color:UIColor?
    var imagenMostrarTexto:String?
    
    @IBOutlet weak var valorMasa: UILabel!
    
    @IBOutlet weak var imagenMostrar: UIImageView!
    //@IBOutlet weak var mensaje: UILabel!
    
    @IBOutlet weak var mostrarMensaje: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagenMostrar.image=UIImage(named: imagenMostrarTexto ?? "foto1")
        valorMasa.text=indice
        mostrarMensaje.text=mensaje
        self.view.backgroundColor=color;

    }
    

    @IBAction func calcularNuevo(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
