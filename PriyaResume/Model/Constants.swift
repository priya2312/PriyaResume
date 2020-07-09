//
//  Constants.swift
//  PriyaResume
//
//  Created by Priyadharshini Tamilarasan on 08/07/20.
//  Copyright © 2020 Priyadharshini Tamilarasan. All rights reserved.
//

import Foundation
import UIKit

struct K {
    
    struct Segues {
        static let resumeToDetail = "ResumeToDetail"
    }
    
    struct Resume {
        static let noOfSections = 1
        static let resumeCellIdentifier = "HeadingCell"
        static let rowHeight: CGFloat = 50
        static let headingTitle = ["Profile Snapshot", "Educational Qualification", "Work Experience", "IT Skills", "Certifications"]
    }
    
    struct Detail {
        
        static let detailCellIdentifier = "DetailCell"
        
        static let sectionArray = [1, 2, 5, 1, 3]
        
        static let snapshot = [
            "Bachelor of Engineering (Honours) with keen interest in the areas of mobile application development, programming languages, software engineering, systems and networking",
            "Passionate about technology and computing", "Worked with people from various countries and cultures",
            "Knowledge of SDLC and 3+ years of experience with object oriented programming languages",
            "Involved in all aspects of software development",
            "Proactive in nature and open to learning",
            "Avid team player with good time management skills and problem-solving abilities",
            "Possessing good interpersonal communication and presentation skills"
        ]
        
        static let educationSection = [
            "National University of Singapore, Singapore (Jul 2011 - Jun 2015)",
            "D.A.V Girls Senior Secondary School, Chennai, India (Jun 1997 - Jun 2011)"
        ]
        
        static let educationRow = [
            [
                "Bachelor of Engineering (Honours)",
                "Major in Computer Engineering",
                "Minor in Business Management"
            ],
            [
                "94.4% aggregate in All India Senior School Certificate Examination (Class 12 CBSE)",
                "96.6% aggregate in All India Secondary School Examination (Class 10 CBSE)"
            ]
        ]
        
        static let workSection = [
            "Ascentya Research and Development Solutions Pvt Ltd, India (Aug 2019 - Present) - Mobile Application Developer",
            "Yokogawa Engineering Asia Pte Ltd, Singapore (Jul 2015 - Jul 2017) - Software Engineer, Research and Development Department",
            "National University of Singapore, Singapore (August 2014 - April 2015) - Android application developer, NUS Enterprise",
            "Seagate International Headquarters Pte Ltd, Singapore (May 2014 - Aug 2014) - Intern, Industrial Engineering department",
            "Huegli Tech Engineering Pte Ltd, Singapore (May 2013 - Aug 2013) - Intern, Software development department"
        ]
        
        static let workRow = [
            [
                "Developed an iOS app that helps schizophrenia patients and their carer to monitor the progress of the patient’s condition",
                "Developing a crop advisory app for farmers, extension workers and gardeners",
                "Skilled and efficient iOS developer with experience creating unique and modern applications using Swift and Xcode",
                "Possessing good knowledge of Cocoapods, Swift Package Manager, Firebase and frameworks provided by Apple (UIKit, Core Location, Core Data, etc.).",
                "Translating client requirements into implementable user stories",
                "Collaborating with product managers and designers to define a rich iOS experience for the user",
                "Writing efficient, maintainable and reusable code prioritising privacy and security",
                "Writing technical documents, user guides and support documentation"
            ],
            [
                "Plant Resource Manager (PRM) - Yokogawa’s flagship software that assists in managing the resources in industrial plants. Plant asset management tool that remotely monitors the performance, health and process interface conditions of field devices. PRM aims to reduce the downtime and maintenance cost of an industrial plant.",
                "Member of an international team consisting of 22 people from Singapore and Japan",
                "Coordinated with clients from Japan and Iran",
                "Collaborating with internal stakeholders and the requirements team to develop commercial software",
                "Performing all aspects of software development",
                "Performing analysis, development, testing and design",
                "Preparing and maintaining important documents related to the project like Investigation Reports, Software Requirements Specification (SRS), Software Architecture and Design Document (SAD), Instruction Manuals (IM) and test cases",
                "Involved in various phases of testing: unit testing, module testing, integration testing, system testing and sanity testing",
                "Build engineer: Compiling various modules developed by the team and preparing the commercial installation software",
                "Maintenance: Catering to customer needs by modifying the product as requested by individual customers"
            ],
            [
                "Developed an android application that exploits the VoIP technology to enable voice and video calls as a part of the final year dissertation",
                "JDK 8 and Android SDK were used to build this application. The application was compatible on Android Lollipop, KitKat and Jelly Bean operating systems",
                "Received an outstanding grade and appreciation from engineering and computing department professors"
            ],
            [
                "Member of the Industrial Engineering team located in Singapore",
                "Developed a user friendly software that runs various optimisation models to improve the decision-making process internally at Seagate",
                "Software was built to cater to the needs of Seagate manufacturing units in Asia. The software potentially saved 100,000 dollars for Seagate and it is currently used in China, Thailand and Singapore",
                "Collaborated with in-house clients from Thailand, Singapore and China via weekly WebEx meetings while developing the software",
                "Appreciated by the project manager for good work and valuable contribution"
            ],
            ["Tested engine control chips manufactured by the company"]
        ]
        
        static let itSection = [
            "Microsoft Office",
            "Operating systems",
            "Programming languages",
            "Other skills"
        ]
        
        static let itRow = [
            ["Word", "Excel", "Powerpoint", "Visio", "OneNote", "Outlook"],
            ["Windows XP", "Windows Server 2008", "Windows Vista", "Windows 7", "Mac OS"],
            ["C", "C++", "C#", "Java", "Swift"],
            ["Android application development", "iOS Development", "InstallShield 2012", "MFC", "SQL", "Visual Studio", "WCF", "Xcode", "XML"]
        ]
        
        static let certRow = ["Introduction to Swift Programming", "iOS App Development Basics", "App Design and Development for iOS"]
        
    }
    
}
