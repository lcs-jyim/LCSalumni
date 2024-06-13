//
//  ViewModel.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/6.
//

import Foundation
@Observable
class LandingViewModel: Observable {
    
    var alumni: [Alumnus]
    
    var fetchingAlumni: Bool = false
    
    init(alumni: [Alumnus] = []){
        self.alumni = alumni
        Task{
            try await getAlumni()
        }
    }
    
    func getAlumni() async throws {
        fetchingAlumni = true
        do {
            let results: [Alumnus] = try await supabase
                .from("alumni")
                .select()
                .order("id", ascending: true)
                .execute()
                .value
            
            self.alumni = results
            fetchingAlumni = false
            
        } catch {
            debugPrint(error)
        }
        
    }
    
    func filterAlumni(on searchTerm: String) async throws {
        
        if searchTerm.isEmpty {
            
            // Get all the to-dos
            Task {
                try await getAlumni()
            }
            
        } else {
            
            // Get a filtered list of to-dos
            do {
                let results: [Alumnus] = try await supabase
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
    
    func filterTodos(on searchTerm: String) async throws {
        
        if searchTerm.isEmpty {
            
            // Get all the to-dos
            Task {
                try await getAlumni()
            }
            
        } else {
            
            // Get a filtered list of to-dos
            do {
                let results: [Alumnus] = try await supabase
                    .from("todos")
                    .select()
                    .ilike("title", pattern: "%\(searchTerm)%")
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

