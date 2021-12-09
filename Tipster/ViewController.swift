//
//  ViewController.swift
//  Tipster
//
//  Created by admin on 09/12/2021.
//

import UIKit

class ViewController: UIViewController {

    // total amount
    
    @IBOutlet weak var totalAmountLebel: UILabel!
    
    // tips incremntal
    // 5%
    @IBOutlet weak var fiveprecLebel: UILabel!
    @IBOutlet weak var fiveDiviedGroup: UILabel!
    @IBOutlet weak var fivePluseAmount: UILabel!
    // 10%
    @IBOutlet weak var tenprecLebel: UILabel!
    @IBOutlet weak var tenPlusAmount: UILabel!
    @IBOutlet weak var tenDiviedGroup: UILabel!
    // 20%
    @IBOutlet weak var twintyprecLebel: UILabel!
    @IBOutlet weak var twintyPluseAmount: UILabel!
    @IBOutlet weak var twintyDiviedGroup: UILabel!
    
    // last group
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var groubSlider:UISlider!
    @IBOutlet weak var groubLebel: UILabel!
   
    // init
    var five = 0
    var ten = 0
    var twinty = 0
    var groupNum = 1
    var amount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // first setup
        totalAmountLebel.text = ""
        tipSlider.value = 1
        groubSlider.value = 1
        
        
    }

    @IBAction func tipSlider(_ sender: UISlider) {
        // take value from slider
        five = Int(sender.value)
        fiveprecLebel.text = "\(five)%"
        ten = Int(sender.value) + 5
        tenprecLebel.text = "\(ten)%"
        twinty = Int(sender.value) + 10
        twintyprecLebel.text = "\(twinty)%"
           
        calculet()
        
    }
  
    
    @IBAction func groupSliderSize(_ sender: UISlider) {
        
        // take value from group slider
        groupNum = Int(sender.value)
        
        groubLebel.text = "Group Size:\(groupNum)"
        
        calculet()
        
    }
    
    
    @IBAction func changeAmount(_ sender: UIButton) {
      // change amount by button ui
        switch sender.title(for: .normal){
            
// every time click we will change the amount
        case "1":
            totalAmountLebel.text! += "1"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "2":
            totalAmountLebel.text! += "2"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "3":
            totalAmountLebel.text! += "3"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "4":
            totalAmountLebel.text! += "4"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "5":
            totalAmountLebel.text! += "5"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "6":
            totalAmountLebel.text! += "6"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "7":
            totalAmountLebel.text! += "7"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "8":
            totalAmountLebel.text! += "8"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "9":
            totalAmountLebel.text! += "9"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "c":
            totalAmountLebel.text! = ""
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
            break
        case "0":
            totalAmountLebel.text! += "0"
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
           break
        case ".":
            // should check if we already have .
            if(totalAmountLebel.text!.contains(".")) {return}else{
            totalAmountLebel.text! += "."
            amount = Double(totalAmountLebel.text  ?? "0") ?? 0.0
                break}
        default:
            return
        }
    }
    
    
    
    
    func calculet(){
        
        
        // first coulmn
        let fiveTip =  Double(five) / 100 * amount

        fivePluseAmount.text = String(format: "%.2f",( fiveTip / Double(groupNum)))
        
        fiveDiviedGroup.text =  String(format: "%.2f",(Double(fiveTip) + amount) / Double(groupNum))
        
        // seconed coulmn
        let tenTip = Double(ten) / 100 * amount
        
        tenPlusAmount.text =  String(format: "%.2f",( tenTip / Double(groupNum)))
        
        tenDiviedGroup.text =  String(format: "%.2f",(Double(tenTip) + amount ) / Double(groupNum))
        
        // third coulmn
        let twinteyTip = Double(twinty) / 100 * amount
        
        twintyPluseAmount.text =  String(format: "%.2f", (twinteyTip / Double(groupNum)))
        
        twintyDiviedGroup.text = String(format: "%.2f", (Double(twinteyTip) + amount ) / Double(groupNum))
        
    }
}

