//
//  UsuarioIngresadoViewController.swift
//  interfazDeRegistro
//
//  Created by Adrian on 08/10/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class UsuarioIngresadoViewController: UIViewController {
    
    var registrado: [String] = []
    var posicion = 0
    
    @IBOutlet weak var nombreUsuario: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        registrado = defaults.array(forKey: "listaDeNombres") as? [String] ?? [String]()
        nombreUsuario.text = "\(registrado[posicion])"
    }

    @IBAction func cerrar(_ sender: UIButton) {
    }
    
}
