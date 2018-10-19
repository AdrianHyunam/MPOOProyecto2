//
//  UsuarioIngresadoViewController.swift
//  interfazDeRegistro
//
//  Created by Adrian on 08/10/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class UsuarioIngresadoViewController: UIViewController {
    
    var registradoNombre: [String] = []
    var registradoApodo: [String] = []
    var posicion = 0
    
    @IBOutlet weak var nombreUsuario: UILabel!
    @IBOutlet weak var apodoDeUsuario: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        registradoNombre = defaults.array(forKey: "listaDeNombres") as? [String] ?? [String]()
        nombreUsuario.text = "\(registradoNombre[posicion])"
        registradoApodo = defaults.array(forKey: "listaDeApodos") as? [String] ?? [String]()
        apodoDeUsuario.text = registradoApodo[posicion]
       
        
    }

}
