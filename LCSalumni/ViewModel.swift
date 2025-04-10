//
//  ViewModel.swift
//  LCSalumni
//
//  Created by junxi Yim on 2025/4/4.
//

import Foundation

func filterAlumni(from people: [alumnusInfo], using searchText: String) -> [alumnusInfo] {
    if searchText.isEmpty {
        return people
    } else {
        return people.filter { person in
            person.name.lowercased().contains(searchText.lowercased())
        }
    }
}

func famousProfileSection(from people:[alumnusInfo], isFamous:Bool) -> [alumnusInfo] {
    if isFamous {
        return people.filter { $0.isFamous }
    } else {
        return people.filter { !$0.isFamous }
    }
}


func Favorites(in people:[alumnusInfo]) -> [alumnusInfo] {
    var favoriteProfiles: [alumnusInfo] = []
    for x in people{
        if x.isFavorite == true{
            favoriteProfiles.append(x)
        }
    }
    return favoriteProfiles
    
}
