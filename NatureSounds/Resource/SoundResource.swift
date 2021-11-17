//
//  SoundResource.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation
import UIKit

struct Resource {
    static var soundResource: [Sounds] {
        var sounds = [Sounds]()
        let forest = Sounds(name: "forest", image: UIImage(systemName: "leaf.fill"), url: Bundle.main.url(forResource: "forest", withExtension: "mp3"))
        
        sounds.append(forest)
        sounds.append(forest)
        sounds.append(forest)
        
        sounds.append(forest)
        sounds.append(forest)
        sounds.append(forest)
        
        return sounds
    }
}
