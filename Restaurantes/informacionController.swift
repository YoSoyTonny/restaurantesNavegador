//
//  informacionController.swift
//  Restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class InformacionController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var restaurantes : [Restaurantes] = []
    @IBOutlet weak var tvRestaurantes: UITableView!
    override func viewDidLoad() {
        restaurantes.append(Restaurantes(Nombre: "Tacos La chalupa", Direccion: "Calle Morelos", Telefono: 6442471599, Descripcion: "La carreta de tacos mas ver&$%a de todo Sonora prro"))
        restaurantes.append(Restaurantes(Nombre: "Tamalitos María", Direccion: "Calle Hidalgo", Telefono: 6444440000, Descripcion: "Ricos tamales de carne, elote, rajas, dulce de leche, calabaza, machaca y muchos mas"))
        restaurantes.append(Restaurantes(Nombre: "Mariscos tosos", Direccion: "Puente Real", Telefono: 6449437294, Descripcion: "Solamente si ca&$&% dinero, puedes comer en nuestro restaurante de deliciosos mariscos bañados en oro"))
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestauran")
        celda?.textLabel?.text = restaurantes[indexPath.row].Nombre
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToRestaurante" {
            let destino = segue.destination as? detalleRestauranteController
            destino?.restaurante = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
        }
    }
}
