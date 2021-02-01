//
//  productList.swift
//  clikcToAddToCart
//
//  Created by bhargava on 01/02/21.
//

import Foundation
class Product {
    var proudctName:String
    var productPrice:Int
    var productCount:Int
    var isProductAddedToCart: Bool
    init(proudctName:String,productPrice:Int,productCount:Int,isProductAddedToCart:Bool) {
        self.proudctName = proudctName
        self.productPrice = productPrice
        self.productCount = productCount
        self.isProductAddedToCart = isProductAddedToCart
    }
}
/*
 class Product {
     var productName: String
     var productPrice: Int
     var isProductAddedToCart: Bool
     var productCount: Int
     init(productName: String, productPrice: Int, isProductAddedToCart: Bool, productCount: Int) {
         self.productName = productName
         self.productPrice = productPrice
         self.isProductAddedToCart = isProductAddedToCart
         self.productCount = productCount
     }
 }
 */

class productList {
    var productArray : [Product] = []
    func addProductsInToList() -> [Product]{
        let car = Product(proudctName: "Car", productPrice: 1500000, productCount: 0, isProductAddedToCart: false)
        let mobile = Product(proudctName: "Mobile", productPrice: 15000, productCount: 0, isProductAddedToCart: false)
        let bike = Product(proudctName: "Bike", productPrice: 150000, productCount: 0, isProductAddedToCart: false)
        let bus = Product(proudctName: "Bus", productPrice: 2500000, productCount: 0, isProductAddedToCart: false)
        let cycle = Product(proudctName: "Cycle", productPrice: 10000, productCount: 0, isProductAddedToCart: false)
        let pencil = Product(proudctName: "Pencil", productPrice: 15, productCount: 0, isProductAddedToCart: false)
        let pen = Product(proudctName: "Pen", productPrice: 20, productCount: 0, isProductAddedToCart: false)
        let tyre = Product(proudctName: "Tyre", productPrice: 250, productCount: 0, isProductAddedToCart: false)
        let tube = Product(proudctName: "Tube", productPrice: 150, productCount: 0, isProductAddedToCart: false)
        let laptop = Product(proudctName: "Laptop", productPrice: 150000, productCount: 0, isProductAddedToCart: false)
        let charger = Product(proudctName: "Charger", productPrice: 1500, productCount: 0, isProductAddedToCart: false)
        let book = Product(proudctName: "Book", productPrice: 15, productCount: 0, isProductAddedToCart: false)
        let pin = Product(proudctName: "Pins", productPrice: 10, productCount: 0, isProductAddedToCart: false)
        let mouse = Product(proudctName: "Mouse", productPrice: 1500, productCount: 0, isProductAddedToCart: false)
        let seat = Product(proudctName: "Seat", productPrice: 15000, productCount: 0, isProductAddedToCart: false)
        let chair = Product(proudctName: "Chair", productPrice: 1500, productCount: 0, isProductAddedToCart: false)
        let cot = Product(proudctName: "Cot", productPrice: 15000, productCount: 0, isProductAddedToCart: false)
        let cooler = Product(proudctName: "Cooler", productPrice: 18000, productCount: 0, isProductAddedToCart: false)
        let ac = Product(proudctName: "A/C", productPrice: 35000, productCount: 0, isProductAddedToCart: false)
        let washingMachine = Product(proudctName: "Washing Machine", productPrice: 55000, productCount: 0, isProductAddedToCart: false)
        let table = Product(proudctName: "Table", productPrice: 10000, productCount: 0, isProductAddedToCart: false)
        
        productArray.append(car)
        productArray.append(mobile)
        productArray.append(bike)
        productArray.append(cycle)
        productArray.append(bus)
        productArray.append(pencil)
        productArray.append(tyre)
        productArray.append(pen)
        productArray.append(tube)
        productArray.append(laptop)
        productArray.append(charger)
        productArray.append(chair)
        productArray.append(book)
        productArray.append(pin)
        productArray.append(mouse)
        productArray.append(seat)
        productArray.append(cot)
        productArray.append(cooler)
        productArray.append(ac)
        productArray.append(washingMachine)
        productArray.append(table)
        return productArray
    }

    
}
