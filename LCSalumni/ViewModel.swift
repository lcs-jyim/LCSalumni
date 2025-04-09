//
//  ViewModel.swift
//  LCSalumni
//
//  Created by junxi Yim on 2025/4/4.
//

import Foundation

func filterPersons(from people: [Info], using searchText: String) -> [Info] {
    if searchText.isEmpty {
        return people
    } else {
        return people.filter { person in
            person.name.lowercased().contains(searchText.lowercased())
        }
    }
}

func famousProfileSection(from people:[Info], isFamous:Bool) -> [Info] {
    if isFamous {
        return people.filter { $0.isFamous }
    } else {
        return people.filter { !$0.isFamous }
    }
}

