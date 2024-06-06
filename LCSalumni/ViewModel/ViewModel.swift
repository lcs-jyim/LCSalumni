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
    var fetchingalumni: Bool = false
    init(alumni: [Info] = []){
        self.alumni = alumni
        Task{
            try await getalumni()
        }
    }
    
    func getalumni() async throws {
        fetchingalumni = true
        do {
            let results: [Info] = try await supabase
                .from("alumni")
                .select()
                .order("id", ascending: true)
                .execute()
                .value
            
            self.alumni = results
        fetchingalumni = false
        } catch {
            debugPrint(error)
        }
        
    }

    func filterAlumni(on searchTerm: String) async throws {
        
        if searchTerm.isEmpty {
            
            // Get all the to-dos
            Task {
                try await getalumni()
            }
            
        } else {
            
            // Get a filtered list of to-dos
            do {
                let results: [Info] = try await supabase
                    .from("alumni")
                    .select()
                    .ilike("name", pattern: "%\(searchTerm)%")
                    .order("id", ascending: true)
                    .execute()
                    .value
                
                self.alumni = results
                
            } catch {
                debugPrint(error)
            }
            
        }
        
    }
      
    
    
    
    
    
    
    
    
}

