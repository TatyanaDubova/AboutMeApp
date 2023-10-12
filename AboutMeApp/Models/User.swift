//
//  User.swift
//  AboutMeApp
//
//  Created by Татьяна Дубова on 11.10.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func registerUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let photo: String
    let name: String
    let surname: String
    let bio: String
    //let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            photo: "",
            name: "Tatyana",
            surname: "Dubova",
            bio: ""
            //job: Company.getCompany()
        )
    }
}

