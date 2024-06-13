////
////  FavoriteAlumni.swift
////  LCSalumni
////
////  Created by junxi Yim on 2024/6/12.
////
//
//import SwiftUI
//
//struct FavoriteAlumni: Identifiable,Codable{
//    let userId: Int?
//    let alumniId: [Alumnus]
//    
//    enum CodingKeys:String, CodingKey {
//        case alumniId = "alumni_id"
//        case userId = "user_id"
//    }
//    struct Alumnus: Identifiable, Codable {
//            var id: Int?
//            var name: String
//            let image: String
//            let gender: String
//            let sigAchievement:String
//            let description: String
//            let gradYear:Int
//            var isFamous:Bool
//            
//            
//            // When decoding, tell the Swift compiler how to map
//            // column names in the table to property names of this structure
//            enum CodingKeys: String, CodingKey {
//                case id
//                case name
//                case gender
//                case gradYear = "grad_year"
//                case sigAchievement = "sig_achievements"
//                case description
//                case image
//                case isFamous
//            
//                
//            }
//    }
//}
//
