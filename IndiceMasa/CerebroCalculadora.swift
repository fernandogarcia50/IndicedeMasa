//
//  CerebroCalculadora.swift
//  IndiceMasa
//
//  Created by Mac11 on 01/03/22.
//

import Foundation
import UIKit

struct CerebroCalculadora {
    var imc: IMC?
    
   mutating func calcularIMC(peso:Float, altura:Float) {
        let valorIMC=peso/(altura*altura)
    if(valorIMC<=18.5){
        imc=IMC(valor: valorIMC, mensaje: "Falta comer mas", color: UIColor.black, imagen: "1")
         
        }
    if(valorIMC>18.6 && valorIMC<=24.9){
        imc=IMC(valor: valorIMC, mensaje: "Estás en tu peso ideal", color: UIColor(named: "verde" ) ?? UIColor.green, imagen: "2")
        }
    if(valorIMC>25 && valorIMC<=29.9)
        {
        imc=IMC(valor: valorIMC, mensaje: "Estás con unos kilos de mas", color: UIColor.orange, imagen: "3")
        }
    if(valorIMC>30){
        imc=IMC(valor: valorIMC, mensaje: "Tienes obesidad :/", color: UIColor.red, imagen: "4")
    }
    print("estoy llegando")
    }
    func retornarValor() -> String {
        let imcCon2Decimanles=String(format: "%.2f", imc?.valor ?? 0.0)
        return imcCon2Decimanles
    }
    func avisar() -> String {
        return imc?.mensaje ?? "sin mensaje"
    }
    func retornarColor() -> UIColor {
        return imc?.color ?? UIColor.white
    }
    func retornarImagen() -> String {
        return imc?.imagen ?? "foto1"
    }
}
