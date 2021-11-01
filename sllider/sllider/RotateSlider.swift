//
//  RotateSlider.swift
//  slider
//
//  Created by ごつ on 2021/10/30.
//

import UIKit

class RotateSlider: UISlider {

    // func awakeFromNib(): Storyboardまたはnibファイルからロードされた直後に呼ばれる
    override func awakeFromNib() {
        super.awakeFromNib()
        transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        // 親の View のサイズが変わった時に、子の View のサイズや位置を自動的に調整することができます。
        autoresizingMask = [.flexibleWidth, .flexibleHeight]
        frame = superview!.bounds
    }

}
