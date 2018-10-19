//
//  RegistroDelUsuarioViewController.swift
//  interfazDeRegistro
//
//  Created by Adrian on 08/10/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class RegistroDelUsuarioViewController: UIViewController {
    
    //MARK: Cajas
    var listaDeEstados: [Bool] = []
    var listaDeNombres: [String] = []
    var listaDeApodos: [String] = []
    var listaDeContraseñas: [String] = []
    
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apodo: UITextField!
    @IBOutlet weak var contraseña: UITextField!
    @IBOutlet weak var validarContraseña: UITextField!
    @IBOutlet weak var errorDeContraseña: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //MARK: Registro de Usuario
        errorDeContraseña.alpha = 0
        let defaults = UserDefaults.standard
        
        listaDeNombres = defaults.object(forKey: "listaDeNombres") as? [String] ?? [String]()
        listaDeApodos = defaults.object(forKey: "listaDeApodos") as? [String] ?? [String]()
        listaDeContraseñas = defaults.object(forKey: "listaDeContraseñas") as? [String] ?? [String]()
        listaDeEstados = defaults.object(forKey: "listaDeEstados") as? [Bool] ?? [Bool]()
        }
    
    @IBAction func registrar(_ sender: UIButton)
    {
        //MARK: Datos guardados
        let defaults = UserDefaults.standard
        let usuarioNombre = nombre.text
        let usuarioApodo = apodo.text
        let usuarioContra = contraseña.text
        let estadoInicial = false
        
        let vacio = ""
        
        if contraseña.text == vacio
        {
            errorDeContraseña.alpha = 1
            errorDeContraseña.text = "No hay contraseña"
        }
        else
        {
        if contraseña.text == validarContraseña.text
        {
            errorDeContraseña.alpha = 0
            listaDeNombres.append(usuarioNombre!)
            defaults.set(listaDeNombres, forKey: "listaDeNombres")
            print(listaDeNombres)
            listaDeApodos.append(usuarioApodo!)
            defaults.set(listaDeApodos, forKey: "listaDeApodos")
            print(listaDeApodos)
            listaDeContraseñas.append(usuarioContra!)
            defaults.set(listaDeContraseñas, forKey: "listaDeContraseñas")
            print(listaDeContraseñas)
            defaults.set(listaDeEstados, forKey: "listaDeEstados")
            listaDeEstados.append(estadoInicial)
        }
        else
        {
            errorDeContraseña.alpha = 1
        }
        }
}
}
