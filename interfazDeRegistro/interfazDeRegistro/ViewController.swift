//
//  ViewController.swift
//  interfazDeRegistro
//
//  Created by Adrian on 08/10/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cont = 0
    var usuarios: [String] = []
    var contraseñas: [String] = []
    
    @IBOutlet weak var usuarioQueEntra: UITextField!
    @IBOutlet weak var contraseñaDelUsuario: UITextField!
    @IBOutlet weak var entra: UIButton!
    @IBOutlet weak var errorDeusuario: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        usuarios = defaults.array(forKey: "listaDeNombres") as? [String] ?? [String]()
        contraseñas = defaults.array(forKey: "listaDeContraseñas") as? [String] ?? [String]()
        errorDeusuario.alpha = 0
    }
    
    @IBAction func entrabro() {
        
        
        if usuarios.contains(usuarioQueEntra.text!) == true && contraseñas.contains(contraseñaDelUsuario.text!) == true
        {
            cont = 0
            print(usuarios)
            print(contraseñas)
            for i in usuarios
            {
                if i == usuarioQueEntra.text!
                {
                    performSegue(withIdentifier: "inicio", sender: self)
                    print("continuar")
                }
                
                cont += 1
                errorDeusuario.alpha = 0
            }
        }
        else
        {
            errorDeusuario.alpha = 1
            print(usuarios)
            print(contraseñas)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "inicio"
        {
            let destino = segue.destination as! UsuarioIngresadoViewController
            destino.posicion = cont
            print("\(cont)--------")
        }
    }
    
    
    @IBAction func unwind(segue: UIStoryboardSegue){ viewDidLoad() }

}

