//
//  detalleRestauranteController.swift
//  Restaurantes
//
//  Created by Alumno on 9/27/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class detalleRestauranteController: UIViewController {
    var restaurante: Restaurantes?
    
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblTelefono: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    
    override func viewDidLoad() {
        self.title = restaurante!.Nombre!
        
        lblDireccion.text = restaurante!.Direccion
        lblTelefono.text = "\(restaurante!.Telefono!)"
        lblDescripcion.text = restaurante!.Descripcion
    }
}
