//
//  InfoViewModel.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/31.
//

import Foundation
@Observable

class AlumniViewModel {
    var Alumni: [Info]
    
    init(Alumni: [Info]) {
        self.Alumni = Alumni
    }
}
