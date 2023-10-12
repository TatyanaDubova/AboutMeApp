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
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            photo: "myPhoto",
            name: "Tatyana",
            surname: "Dubova",
            bio: """
            Родилась в Н.Новгороде. Закончила ННГУ им. Н.И. Лобачевского.\n
            Проработала в it сфере 5 лет в должности ручного тестировщика.
            На предпоследнем проекте писала автотесты на языке Python.\n
            Хобби: люблю рисовать, читать, смотреть фильмы и аниме, играть в компьютерные игры.\n
            Люблю животных, дома со мной проживают два кота: кошка по кличке Тапка и кот Аста.\n
            Из особенных навыков: умею стенографировать и печатать слепым 10ти пальцевым методом
            на русской раскладке.\n
            Мечта: много путешествовать, особенно хочется побывать в Японии.
            """,
            job: Company.getCompany()
        )
    }
}

struct Company {
    let nameCompany: String
    let department: String
    let jobTitle: String
    
    static func getCompany() -> Company {
        Company(
            nameCompany: "IBS",
            department: "QA",
            jobTitle: "Tester"
        )
    }
}
