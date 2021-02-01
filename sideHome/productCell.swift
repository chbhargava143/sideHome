//
//  productCell.swift
//  clikcToAddToCart
//
//  Created by bhargava on 01/02/21.
//

import UIKit

class productCell: UITableViewCell {
    var callBackAdItemsToCarts:(() -> ())?
    @IBOutlet weak var addItemToCartView:UIView!
    @IBOutlet weak var productNames:UILabel!
    @IBOutlet weak var productPrice:UILabel!
    @IBOutlet weak var prouctCount:UILabel!
    @IBOutlet weak var incProductCount:UIButton!
    @IBOutlet weak var decProductCount:UIButton!
    @IBOutlet weak var addItemToCart:UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        addItemToCart.layer.cornerRadius = 7.5
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func didAddItemToCart(_ sender:UIButton){
        callBackAdItemsToCarts?()
    }
    @IBAction func didIncItemCount(_ sender:UIButton){
        
    }
    @IBAction func didDecItemCount(_ sender:UIButton){
        
    }
}
