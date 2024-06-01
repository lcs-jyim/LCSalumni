//
//  InfoViewModel.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/31.
//

import Foundation
@Observable

class InfoViewModel {
    var alumni: [Info]
    
    init(alumni: [Info]) {
        self.alumni = alumni
    }
}
