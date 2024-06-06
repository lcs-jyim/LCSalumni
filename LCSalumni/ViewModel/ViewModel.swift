//
//  ViewModel.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/6.
//

import Foundation
@Observable
class ViewModel {
    var alumni: [Info]
    var fetchingTodos: Bool = false
    init(alumni: [Info] = []){
        self.alumni = alumni
        Task{
            try await getalumni()
        }
    }
    
        
    
    
    
    
    
    
    
}

