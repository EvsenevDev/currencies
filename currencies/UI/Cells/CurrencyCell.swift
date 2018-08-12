//
//  CurrencyCell.swift
//  currencies
//
//  Created by Bogdan Evsenev on 10/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit
import AlamofireImage

typealias ValueChangeClosure = (Double) -> Void

class CurrencyCell: UITableViewCell, UITextFieldDelegate {
    static let nibName = "CurrencyCell"
    
    @IBOutlet private weak var codeLabel: UILabel!
    @IBOutlet private weak var flagImageView: UIImageView!
    @IBOutlet private weak var valueField: UITextField!
    @IBOutlet private weak var underlineView: UIView!
    
    var onValueChange: ValueChangeClosure?
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        valueField.isEnabled = false
        valueField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        onValueChange = nil
        flagImageView.image = nil
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        underlineView.backgroundColor = selected ? #colorLiteral(red: 0.1333333333, green: 0.6549019608, blue: 0.9411764706, alpha: 1) :  #colorLiteral(red: 0.7488602454, green: 0.7488602454, blue: 0.7488602454, alpha: 0.3700033551)
        valueField.isEnabled = selected
        if selected {
            valueField.becomeFirstResponder()
        } else {
            valueField.resignFirstResponder()
        }
    }
    
    // MARK: - Interface

    func fill(viewModel: CurrencyViewModel) {
        codeLabel.text = viewModel.code
        valueField.text = viewModel.value
        if let flagURL = try? flagURL(currency: viewModel.code).asURL() {
            flagImageView.af_setImage(withURL: flagURL)
        }
    }
    
    // MARK: - UITextFieldDelegate
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let separator = NSLocale.current.decimalSeparator, let text = textField.text else { return true }
        if string == separator {
            return !text.isEmpty && !text.contains(string)
        }
        return true
    }
    
    @objc private func textFieldDidChange(_ textField: UITextField) {
        let value = Double(textField.text!) ?? 0.00
        onValueChange?(value)
    }
    
    
}
