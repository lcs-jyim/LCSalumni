//
//  BasicInfo.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import Foundation

@Observable
class Info: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let gender: String
    let sigAchievement:String
    let description: String
    let gradYear:Int
    let gradYearSimp:String
    var isFavorite:Bool
    let isFamous:Bool
    
    init(name: String, image: String, gender: String, sigAchievement: String, description: String, gradYear: Int, gradYearSimp: String, isFavorite: Bool,isFamous:Bool) {
            self.name = name
            self.image = image
            self.gender = gender
            self.sigAchievement = sigAchievement
            self.description = description
            self.gradYear = gradYear
            self.gradYearSimp = gradYearSimp
            self.isFavorite = isFavorite
            self.isFamous = isFamous
        }
}


var vincentCloutier = Info(name: "Vincent Cloutier", image: "Vincent", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                           , gradYear: 2022, gradYearSimp: "'22", isFavorite: false, isFamous: false)

var jackCraig = Info(name: "Jack Craig", image: "Jack", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                     , gradYear: 2022, gradYearSimp: "'22", isFavorite: false, isFamous: false)

var fritzFischerAppelt = Info(name: "Fritz Fischer-Appelt", image: "Fritz", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                              , gradYear: 2022, gradYearSimp: "'22", isFavorite: false, isFamous: false)

var carterChartier = Info(name: "Carter Chartier", image: "Carter", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                          , gradYear: 2022, gradYearSimp: "'22", isFavorite: false,isFamous: false)

var rileyGrosskopf = Info(name: "Riley Grosskopf", image: "Riley", gender: "F", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                          , gradYear: 2022, gradYearSimp: "'22", isFavorite: false,isFamous: false)

var davidCrispo = Info(name: "David Crispo", image: "David", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 2022, gradYearSimp: "'22", isFavorite: false,isFamous: false)

var davidMiller = Info(name: "David Miller", image: "Miller", gender: "M", sigAchievement: "Former Mayor of Toronto", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1976, gradYearSimp: "'76", isFavorite: true,isFamous: true)

var willArnett = Info(name: "Will Arnett", image: "Arnett", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1988, gradYearSimp: "'88", isFavorite: false,isFamous: true)

var jimHarris = Info(name: "Jim Harris", image: "Harris", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1979, gradYearSimp: "'79", isFavorite: false,isFamous: true)

var felipeVI = Info(name: "King Felipe VI", image: "FelipeVI", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1986, gradYearSimp: "'86", isFavorite: false,isFamous: true)

var christianKracht = Info(name: "Christian Kracht", image: "Kracht", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1984, gradYearSimp: "'84", isFavorite: false,isFamous: true)

var codyCeci = Info(name: "Cody Ceci", image: "Ceci", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1910, gradYearSimp: "'10", isFavorite: false,isFamous: true)


var allStudents = [
    vincentCloutier,
    jackCraig,
    fritzFischerAppelt,
    carterChartier,
    rileyGrosskopf,
    davidCrispo,
    davidMiller,
    willArnett,
    jimHarris,
    felipeVI,
    christianKracht,
    codyCeci
]
