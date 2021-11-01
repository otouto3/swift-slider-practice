//
//  SliderView.swift
//  slider
//
//  Created by ごつ on 2021/10/30.
//

import UIKit

//@IBDesignable
class SliderView: UIView {
    

    @IBOutlet weak var slider: RotateSlider!
    
    @IBAction func sliderChanged(_ sender: RotateSlider) {
//        print(UISlider.self)
        print(sender.value)
//        print(SliderView.)
        print(sender)
        print(slider.tag)
    }
    //    override func viewDidLoad() {
//        slider.addTarget(self, action: #selector(sliderDidChangeValue(_:)), for: .valueChanged)
//    }
    
//    @objc func sliderDidChangeValue(_ sender: UISlider) {
//        let value = sender.value
//        print(value)
//    }
    
    
    
    // コードから生成された場合はinit(frame:)、ストーリーボードから生成された場合はinit(coder:)で、それぞれ初期化される
    
    override init(frame: CGRect){
        super.init(frame: frame)
        loadNib()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }

    func loadNib(){
        let view = Bundle.main.loadNibNamed("SliderView", owner: self, options: nil)?.first as! UIView
//        let view = Bundle.main.loadNibNamed("SliderView", owner: self, options: nil) as! UIView
        view.frame = self.bounds
        self.addSubview(view)
        
        // presenterへ何回loadNibされたか聞きに行く
        print("loadNib")
        
        // private numを持たせておいてloadNibがよばれるたびに，presenterへ通知
    }

}
