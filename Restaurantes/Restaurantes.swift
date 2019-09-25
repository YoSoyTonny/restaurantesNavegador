//
//  Restaurantes.swift
//  Restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Restaurantes
{
    var Nombre : String?
    var Direccion : String?
    var Telefono : Int?
    var Descripcion : String?
    
    init(Nombre : String, Direccion : String, Telefono : Int, Descripcion: String) {
        self.Nombre = Nombre
        self.Direccion = Direccion
        self.Telefono = Telefono
        self.Descripcion = Descripcion
    }
}
