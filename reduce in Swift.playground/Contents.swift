//: Playground - noun: a place where people can play

//: Playground - noun: a place where people can play

import UIKit


class Product {
    var name : String
    var price : Double
    var availableAmout : Int
    init(name : String, price : Double, availAmount : Int) {
        self.name = name
        self.price = price
        self.availableAmout = availAmount
    }
}

let products = [
    Product(name: "Macbook 2012", price: 620.2, availAmount: 12),
    Product(name: "Macbook 2013", price: 720.2, availAmount: 2),
    Product(name: "Macbook 2014", price: 800, availAmount: 5),
    Product(name: "Macbook 2015", price: 999.99, availAmount: 1),
    Product(name: "Macbook 2016", price: 1201.2, availAmount: 231),
    Product(name: "Macbook 2017", price: 2112, availAmount: 1212)
]





let totals = products.reduce(( 0.0, 0 )) { ( totals , product ) -> ( Double, Int ) in
    
    
    return (
        totals.0 + product.price,
        totals.1 + product.availableAmout
    )
}



print("Total price: \(totals.0) - total available amount: \(totals.1) ")


var arr = [5,9,2,3,1]
let total = arr.reduce(10,+)



