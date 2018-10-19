//
//  Ingresemos.swift
//  interfazDeRegistro
//
//  Created by Adrian on 19/10/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class Ingresemos: UIButton {
    
    var usuarios: [String] = []
    var contraseñas: [String] = []
    
    func entremos () -> Bool
    {
        let defaults = UserDefaults.standard
        
        usuarios = defaults.array(forKey: "listaDeNombres") as? [String] ?? [String]()
        contraseñas = defaults.array(forKey: "listaDeContraseñas") as? [String] ?? [String]()
        if usuarios.contains(usuarioQueEntra.text!) == true && contraseñas.contains(contraseñaDelUsuario.text!) == true
        {
            print("Va")
            print(usuarios)
            print(contraseñas)
            return true
        }
        else
        {
            print("NO hay usuario")
            print(usuarios)
            print(contraseñas)
            return false
        }
    }
}
