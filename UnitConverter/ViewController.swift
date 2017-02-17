/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var convertedtemp: UILabel!
    @IBOutlet weak var convertbutton: UIButton!
    @IBOutlet weak var converter: UITextField!
    @IBOutlet weak var ctof_ftoc: UISegmentedControl!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }

        
        // Do any additional setup after loading the view, typically from a ni b.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateanswer(_ sender: UIButton) {
        switch ctof_ftoc.selectedSegmentIndex
        {
        case 0:
            let num = ((Float(converter.text!)! * 9) / 5) + 32
            convertedtemp.text = "\(num)F";
        case 1:
            let num = ((Float(converter.text!)! - 32) * 5) / 9
            convertedtemp.text = "\(num)C";
        default:
            break;
        }
    }

}

