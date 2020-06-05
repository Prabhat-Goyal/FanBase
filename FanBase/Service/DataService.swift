//
//  DataService.swift
//  FanBase
//
//  Created by Prabhat  on 04/06/20.
//  Copyright © 2020 Defenders. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let movies = [
    Movie(name: "Sacred Games"),
    Movie(name: "Extraction")
    ]
    
    func getMovies() -> [Movie] {
        return movies
    }
    
    private let SacredGames = [
        Actor(name: "Nawazuddin Siddiqui", picture: "NawajS", bio: "Nawazuddin Siddiqui (born 19 May 1974) is an Indian actor, known for his works in Hindi cinema.An alumnus of the National School of Drama. Nawazuddin Siddiqui started getting roles in independent films; these were the films which gave him and Indian Cinema recognition internationally. Most of his Independent films have received critical acclaim at International Films Festivals, such as the Academy Awards, Cannes Film Festival, Berlin Film Festival, Busan Film Festival, Tribeca Film Festival, and the Asia Pacific Screen Awards."),
    
        Actor(name: "Saif Ali Khan", picture: "Saif", bio: "Saif Ali Khan (pronounced [ˈsɛːf əˈli ˈxaːn]; born Sajid Ali Khan on 16 August 1970)[1] is an Indian film actor and producer. The son of actress Sharmila Tagore and cricketer Mansoor Ali Khan Pataudi, Khan made his acting debut in Yash Chopra's drama Parampara (1993), but achieved success with his roles in the romantic drama Yeh Dillagi and the action film Main Khiladi Tu Anari (both 1994). Khan's career prospect declined through much of the 1990s, and his biggest commercial success of the decade came with the ensemble drama Hum Saath-Saath Hain (1999). He rose to prominence with roles in two ensemble comedy-dramas—Dil Chahta Hai (2001) and Kal Ho Naa Ho (2003)."),
    
        Actor(name: "Radhika Apte", picture: "Radhika", bio: "Radhika Apte (born 7 September 1985) is an Indian actress.[2] She began acting in theatre and made her film debut with a brief role in the Hindi fantasy Vaah! Life Ho Toh Aisi! (2005). Apte has since worked in Hindi, Marathi, Tamil, Telugu, Malayalam, Bengali, and English-language films."),
    
        Actor(name: "Pankaj Tripathi", picture: "Pankaj_Tripathi", bio: "Pankaj Tripathi is an Indian actor who appears predominantly in Hindi films. He debuted in 2004 with a minor role in Run and Omkara and has since worked in more than 40 films and 60 television shows.Tripathi's breakthrough came in 2012 for his supporting role in the Gangs of Wasseypur film series.He has since received critical appraisal for multiple films, including Fukrey (2013), Masaan (2015), Nil Battey Sannata (2016), Bareilly Ki Barfi (2017), Newton (2017), Fukrey Returns (2017) and Stree (2018). For Newton, Tripathi earned several awards including a National Film Award – Special Mention."),
    
        Actor(name: "Surveen Chawla", picture: "Surveen-Chawla", bio: "Surveen Chawla is an Indian film actress and dancer.She started her career with television soap operas in the earlier days and ended up in appearing in the films. She is known for her roles in movies and serials like Hate Story 2 (2014), Ugly (2013), Parched (2015) and 24 (2016) etc. along with many others films. In 2018, she was seen in web series Haq Se.")
        
    ]
    
    private let Extraction = [
        Actor(name: "Chris Hemsworth", picture: "Cris", bio: "Christopher Hemsworth (born 11 August 1983) is an Australian actor. He first rose to prominence in Australia playing Kim Hyde in the Australian television series Home and Away (2004–07) before beginning a film career in Hollywood. Hemsworth is best known for playing Thor in eight Marvel Cinematic Universe films, beginning with Thor (2011) and appearing most recently in Avengers: Endgame (2019), which established him as one of the leading and highest-paid actors in the world."),
        
        Actor(name: "Randeep Hooda", picture: "randeep", bio: "Randeep Hooda (born 20 August 1976) is an Indian actor and equestrian. Best known for his work in the Hindi film industry, he is the recipient of accolades such as two Stardust Awards and a nomination each for the Filmfare and the International Indian Film Academy Awards."),
        
        Actor(name: "Pankaj Tripathi", picture: "Pankaj_Tripathi", bio: "Pankaj Tripathi is an Indian actor who appears predominantly in Hindi films. He debuted in 2004 with a minor role in Run and Omkara and has since worked in more than 40 films and 60 television shows.Tripathi's breakthrough came in 2012 for his supporting role in the Gangs of Wasseypur film series.He has since received critical appraisal for multiple films, including Fukrey (2013), Masaan (2015), Nil Battey Sannata (2016), Bareilly Ki Barfi (2017), Newton (2017), Fukrey Returns (2017) and Stree (2018). For Newton, Tripathi earned several awards including a National Film Award – Special Mention."),
        
        Actor(name: "Rudhraksh Jaiswal", picture: "Rudhraksh-Jaiswal", bio: "Rudhraksh Jaiswal (born 19 September 2003) is an Indian actor. He is known for his role of Ovi Mahajan Jr in Netflix's 2020 film Extraction."),
        
        Actor(name: "Priyanshu Painyuli ", picture: "priyanshu", bio: "Priyanshu started his career as a model and assistant director. He made his acting debut with Manuja Tyagi's movie Love At First Sight. After this film, he got an offer from Farhan Akhtar for remake film Rock On 2. In 2018, he featured in Vikramaditya Motwane's Bhavesh Joshi Superhero in which he played the role of Bhavesh Joshi.In 2020, he played the role of a Bangladeshi crime lord in Sam Hargrave's directorial debut Extraction featuring Chris Hemsworth.")
        
        
    ]
    
    func getActors(forFilmName name: String) -> [Actor] {
        switch name {
        case "SacredGames":
            return getSacredGames()
        case "Extraction":
            return getExtraction()
        default:
            return getSacredGames()
        }
    }
    
    func getSacredGames() -> [Actor] {
        return SacredGames
    }
    
    func getExtraction() -> [Actor] {
        return Extraction
    }
}
