//
//  BasicInfo.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct Info: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let gender: String
    let sigAchievement:String
    let description: String
    let gradYear:Int
    let gradYearSimp:String
    var isFavorite:Bool
}

let vincentCloutier = Info(name: "Vincent Cloutier", image: "Vincent", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                           , gradYear: 2022, gradYearSimp: "'22", isFavorite: false)

let jackCraig = Info(name: "Jack Craig", image: "Jack", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                     , gradYear: 2022, gradYearSimp: "'22", isFavorite: false)

let fritzFischerAppelt = Info(name: "Fritz Fischer-Appelt", image: "Fritz", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                              , gradYear: 2022, gradYearSimp: "'22", isFavorite: false)

let carterChartier = Info(name: "Carter Chartier", image: "Carter", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                          , gradYear: 2022, gradYearSimp: "'22", isFavorite: false)

let rileyGrosskopf = Info(name: "Riley Grosskopf", image: "Riley", gender: "F", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
"""
                          , gradYear: 2022, gradYearSimp: "'22", isFavorite: false)

let davidCrispo = Info(name: "David Crispo", image: "David", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 2022, gradYearSimp: "'22", isFavorite: false)



let recentlyGrads = [
    vincentCloutier,
    jackCraig,
    fritzFischerAppelt,
    carterChartier,
    rileyGrosskopf,
    davidCrispo
]

let davidMiller = Info(name: "David Miller", image: "Miller", gender: "M", sigAchievement: "Former Mayor of Toronto", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1976, gradYearSimp: "'76", isFavorite: true)

let willArnett = Info(name: "Will Arnett", image: "Arnett", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1988, gradYearSimp: "'88", isFavorite: false)

let jimHarris = Info(name: "Jim Harris", image: "Harris", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1979, gradYearSimp: "'79", isFavorite: false)

let felipeVI = Info(name: "King Felipe VI", image: "FelipeVI", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1986, gradYearSimp: "'86", isFavorite: false)

let christianKracht = Info(name: "Christian Kracht", image: "Kracht", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1984, gradYearSimp: "'84", isFavorite: false)

let codyCeci = Info(name: "Cody Ceci", image: "Ceci", gender: "M", sigAchievement: " ", description: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A pellentesque sit amet porttitor eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Eget duis at tellus at urna condimentum. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Urna nunc id cursus metus aliquam. Eget felis eget nunc lobortis mattis aliquam. Pharetra convallis posuere morbi leo urna molestie. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Sit amet mattis vulputate enim.
Sit amet facilisis magna etiam tempor orci. Quis eleifend quam adipiscing vitae proin sagittis. Mollis nunc sed id semper risus in. Pellentesque dignissim enim sit amet venenatis. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Eu volutpat odio facilisis mauris. Purus gravida quis blandit turpis cursus in hac habitasse platea. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Fringilla ut morbi tincidunt augue interdum velit euismod. Sed ullamcorper morbi tincidunt ornare massa eget egestas
""", gradYear: 1910, gradYearSimp: "'10", isFavorite: false)

let FamousAlumni = [
    davidMiller,
    willArnett,
    jimHarris,
    felipeVI,
    christianKracht,
    codyCeci
]

struct Uni: Identifiable{
    let id = UUID()
    let universalItem:String
}
let UofT = Uni(universalItem: "University of Toronto")
let waterloo = Uni(universalItem: "University of Waterloo")
let UOttawa = Uni(universalItem: "University of Ottawa")
let McMaster = Uni(universalItem: "University of McMaster")
let ubc = Uni(universalItem: "University of British Columbia")


let CaUniversities = [
UofT,
waterloo,
UOttawa,
McMaster,
ubc
]

let Male = Uni(universalItem: "M")
let Female = Uni(universalItem: "F")
let NB = Uni(universalItem: "Non Binary")

let Genders = [
Male,
Female,
NB]

let jack = Uni(universalItem: "Jack")
let kevin = Uni(universalItem: "Kevin")
let john = Uni(universalItem: "John")
let jason = Uni(universalItem: "Jason")
let charlotte = Uni(universalItem: "Charlotte")
let emma = Uni(universalItem: "Emma")
let olivia = Uni(universalItem: "Olivia")

let firstNames = [
jack,
kevin,
john,
jason,
charlotte,
emma,
olivia]

let ross = Uni(universalItem: "Ross")
let smith = Uni(universalItem: "Smith")
let armstrong = Uni(universalItem: "ArmStrong")
let mcewen = Uni(universalItem: "Mcewen")
let ryder = Uni(universalItem: "Ryder")
let mathews = Uni(universalItem: "Mathews")
let jones = Uni(universalItem: "Jones")

let lastNames = [
ross,
smith,
armstrong,
mcewen,
ryder,
mathews,
jones]
