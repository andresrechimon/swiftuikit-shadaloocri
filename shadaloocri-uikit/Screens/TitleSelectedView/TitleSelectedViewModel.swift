//
//  TitleSelectedViewModel.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import Foundation

class TitleSelectedViewModel {
    let characters: [SFCharacter] = [
        //SSF2T
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-akuma",
            name: "Akuma",
            bio: "A powerful martial artist and brother of Gouken, known for his deadly and destructive fighting style. His mastery of the Dark Hadou makes him a dangerous adversary.",
            country: "Japan",
            specialMoves: ["Shun Goku Satsu", "Gou Hadoken", "Gou Shoryuken", "Gou Messatsu"],
            debutYear: 1994,
            debutGame: "Super Street Fighter II Turbo"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-balrog",
            name: "Balrog",
            bio: "A mafia boxer known for his brutality in the ring. With his powerful punches and aggressive attitude, Balrog is a formidable threat in combat.",
            country: "United States",
            specialMoves: ["Turn Punch", "Dirty Bull", "Dash Straight", "Dash Uppercut"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-bison",
            name: "M.Bison",
            bio: "The leader of the Shadaloo criminal organization and one of the series' most iconic antagonists. His ability to manipulate psychic power and his thirst for control make him a fearsome opponent.",
            country: "Thailand",
            specialMoves: ["Psycho Crusher", "Scissor Kick", "Head Press", "Devil Reverse"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-blanka",
            name: "Blanka",
            bio: "A man who has become a fierce fighter after years of living in the Brazilian jungle. His beastly appearance and electric attacks make him an unpredictable opponent.",
            country: "Brazil",
            specialMoves: ["Electric Thunder", "Rolling Attack", "Vertical Roll", "Blanka Ball"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-cammy",
            name: "Cammy",
            bio: "A former British soldier who has become an elite agent. With her exceptional speed and agility, Cammy is known for her fast and lethal combat style.",
            country: "United Kingdom",
            specialMoves: ["Spiral Arrow", "Cannon Spike", "Hooligan Combination", "Delta Red Assault"],
            debutYear: 1993,
            debutGame: "Super Street Fighter II: The New Challengers"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-chunli",
            name: "Chun-Li",
            bio: "An Interpol fighter with a strong sense of justice. Her impressive martial arts skills and ability to execute fast kicks make her one of the most beloved characters in the series.",
            country: "China",
            specialMoves: ["Hyakuretsu Kyaku", "Kikoken", "Spinning Bird Kick", "Senenshu"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-deejay",
            name: "Deejay",
            bio: "A reggae artist and kickboxing fighter from Jamaica. His positive energy and fighting style based on fast rhythms and fluid movements make him unique on the battlefield.",
            country: "Jamaica",
            specialMoves: ["Double Rolling Sobat", "Max Out", "Sobat Kick", "Jackknife Maximum"],
            debutYear: 1993,
            debutGame: "Super Street Fighter II: The New Challengers"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-dhalsim",
            name: "Dhalsim",
            bio: "A Hindu monk with the ability to stretch his limbs and manipulate fire. His pacifist approach to fighting contrasts with his incredible control over mystical arts.",
            country: "India",
            specialMoves: ["Yoga Fire", "Yoga Flame", "Yoga Teleport", "Yoga Inferno"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-feilong",
            name: "Fei-Long",
            bio: "An action movie actor from Hong Kong who specializes in martial arts. His fighting style is inspired by cinematic kung fu, and he aims to be the greatest fighter the world has ever seen.",
            country: "Hong Kong",
            specialMoves: ["Rekkaken", "Rekkashu", "Shienkyaku", "Kikoken"],
            debutYear: 1993,
            debutGame: "Super Street Fighter II: The New Challengers"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-guile",
            name: "Guile",
            bio: "An American military man seeking revenge for the death of his friend. His combat training and ability to use sonic waves allow him to dominate in the ring.",
            country: "United States",
            specialMoves: ["Sonic Boom", "Flash Kick", "Somersault Kick", "Flash Kick"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-honda",
            name: "E.Honda",
            bio: "A Japanese sumo wrestler fighting to restore the honor and reputation of sumo. His large size and powerful sumo attacks make him an impressive adversary.",
            country: "Japan",
            specialMoves: ["Hundred Hand Slap", "Sumo Headbutt", "Sumo Splash", "Oicho Throw"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-ken",
            name: "Ken",
            bio: "An expert martial artist from the United States and rival to Ryu. His fighting style is based on quick and explosive techniques, and his competitive spirit drives him to be the best.",
            country: "United States",
            specialMoves: ["Hadoken", "Shoryuken", "Tatsumaki Senpukyaku", "Shoryureppa"],
            debutYear: 1987,
            debutGame: "Street Fighter"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-ryu",
            name: "Ryu",
            bio: "A wandering martial arts master traveling the world in search of perfection. His discipline and inner strength are evident in every one of his combat moves.",
            country: "Japan",
            specialMoves: ["Hadoken", "Shoryuken", "Tatsumaki Senpukyaku", "Shinku Hadoken"],
            debutYear: 1987,
            debutGame: "Street Fighter"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-sagat",
            name: "Sagat",
            bio: "A former Muay Thai champion with a strong sense of pride. His imposing presence and ability to use powerful attacks make him a feared rival to all.",
            country: "Thailand",
            specialMoves: ["Tiger Uppercut", "Tiger Knee", "Tiger Shot", "Tiger Genocide"],
            debutYear: 1987,
            debutGame: "Street Fighter"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-thawk",
            name: "T.Hawk",
            bio: "A Native American warrior with a strong connection to his homeland. His strength-based attacks and ability to take down opponents make him a formidable fighter.",
            country: "Mexico",
            specialMoves: ["Condor Dive", "Condor Spire", "Tomahawk Buster", "Hawk Swoop"],
            debutYear: 1993,
            debutGame: "Super Street Fighter II: The New Challengers"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-vega",
            name: "Vega",
            bio: "A Spanish ninja known for his agility and acrobatic fighting style. His ability to climb walls and his skill with the claw give him an advantage in combat.",
            country: "Spain",
            specialMoves: ["Flying Barcelona Attack", "Rolling Crystal Flash", "Scarlet Terror", "Izuna Drop"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .SSF2T,
            avatar: "ssf2t-zangief",
            name: "Zangief",
            bio: "A Russian professional wrestler with a heart of gold. His immense strength and ability to perform powerful suplexes make him a feared contender in the ring.",
            country: "URSS",
            specialMoves: ["Spinning Piledriver", "Soviet Suplex", "Banishing Flat", "Double Lariat"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        //SSF2T
        
        //SF3TS
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-akuma",
            name: "Akuma",
            bio: "A powerful martial artist and brother of Gouken, known for his deadly and destructive fighting style. His mastery of the Dark Hadou makes him a dangerous adversary.",
            country: "Japan",
            specialMoves: ["Shun Goku Satsu", "Gou Hadoken", "Gou Shoryuken", "Gou Messatsu"],
            debutYear: 1994,
            debutGame: "Super Street Fighter II Turbo"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-alex",
            name: "Alex",
            bio: "A professional wrestler from the United States with a straightforward and powerful fighting style. His moves focus on brute strength and explosive attacks.",
            country: "United States",
            specialMoves: ["Flash Chop", "Slash Elbow", "Hyper Bomb", "Stun Gun Headbutt"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-chunli",
            name: "Chun-Li",
            bio: "An Interpol officer with a strong sense of justice. Known for her rapid and powerful kicks, Chun-Li uses her exceptional speed to overwhelm her opponents.",
            country: "China",
            specialMoves: ["Hyakuretsu Kyaku", "Kikoken", "Spinning Bird Kick", "Senenshu"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-dudley",
            name: "Dudley",
            bio: "A wealthy boxer from the United Kingdom with a refined and elegant fighting style. His powerful punches and graceful moves make him a sophisticated fighter.",
            country: "United Kingdom",
            specialMoves: ["Rocket Upper", "Machine Gun Blow", "Ducking", "Rolling Thunder"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-elena",
            name: "Elena",
            bio: "A spirited young woman from Kenya with a unique and fluid fighting style based on African dance. Her agility and acrobatic moves make her a challenging opponent.",
            country: "Kenya",
            specialMoves: ["Spinning Beat", "Yoga Cat", "Heal", "Axel Spin"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-hugo",
            name: "Hugo",
            bio: "A massive and powerful wrestler from Germany with a formidable presence. His size and strength allow him to execute crushing throws and powerful strikes.",
            country: "Germany",
            specialMoves: ["Hugo's Ultra", "Clothesline", "Body Press", "Russian Slam"],
            debutYear: 1997,
            debutGame: "Street Fighter III: 2nd Impact"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-ibuki",
            name: "Ibuki",
            bio: "A young and agile ninja from Japan with a keen sense of humor. Her fast and acrobatic moves make her a difficult opponent to catch and defeat.",
            country: "Japan",
            specialMoves: ["Kunai", "Hien", "Tsumuji", "Yoshin"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-ken",
            name: "Ken",
            bio: "An expert martial artist from the United States and rival to Ryu. Known for his fiery personality and powerful Shoryuken, Ken continues to push the limits of his abilities.",
            country: "United States",
            specialMoves: ["Hadoken", "Shoryuken", "Tatsumaki Senpukyaku", "Shoryureppa"],
            debutYear: 1987,
            debutGame: "Street Fighter"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-makoto",
            name: "Makoto",
            bio: "A determined and powerful karate practitioner from Japan. Her strong and straightforward fighting style, combined with her relentless drive, make her a formidable opponent.",
            country: "Japan",
            specialMoves: ["Tetsuzan", "Fukiage", "Hayate", "Seichuusen"],
            debutYear: 1999,
            debutGame: "Street Fighter III: 3rd Strike"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-q",
            name: "Q",
            bio: "A mysterious and enigmatic fighter whose true identity remains unknown. His unorthodox fighting style and impressive durability make him a unique challenge.",
            country: "Unknown",
            specialMoves: ["QCF Punch", "QCF Kick", "QCF Tackle", "QCF Throw"],
            debutYear: 1999,
            debutGame: "Street Fighter III: 3rd Strike"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-necro",
            name: "Necro",
            bio: "A genetically modified fighter with the ability to stretch his limbs and generate electrical attacks. His eerie appearance and unpredictable moves make him a dangerous opponent.",
            country: "Unknown",
            specialMoves: ["Electric Snake", "Stretch Shot", "Spider", "Shockwave"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-oro",
            name: "Oro",
            bio: "An ancient and wise martial artist from Brazil who trains using only one arm. His deep knowledge of martial arts and mystical abilities make him a challenging opponent.",
            country: "Brazil",
            specialMoves: ["Tengu Stone", "Yagyou", "Kokyu", "Dodon"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-remy",
            name: "Remy",
            bio: "A French fighter who seeks to avenge his sister's death. His moves are characterized by his use of energy-based attacks and his commitment to perfecting his fighting style.",
            country: "France",
            specialMoves: ["Revenge", "QCF PUNCH", "QCF KICK", "QCF PUNCH"],
            debutYear: 1999,
            debutGame: "Street Fighter III: 3rd Strike"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-ryu",
            name: "Ryu",
            bio: "A wandering martial artist traveling the world in search of perfection. His discipline and inner strength are evident in every one of his combat moves.",
            country: "Japan",
            specialMoves: ["Hadoken", "Shoryuken", "Tatsumaki Senpukyaku", "Shinku Hadoken"],
            debutYear: 1987,
            debutGame: "Street Fighter"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-sean",
            name: "Sean",
            bio: "A Brazilian street fighter who idolizes Ryu and strives to improve his skills. His moves are a mix of traditional and street-fighting techniques, reflecting his training and dedication.",
            country: "Brazil",
            specialMoves: ["Hadou Burst", "Shoryuken", "Tornado", "Tornado Kick"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-twelve",
            name: "Twelve",
            bio: "A mysterious being with the ability to morph his body and replicate the moves of his opponents. His strange and unpredictable abilities make him a unique and challenging fighter.",
            country: "Unknown",
            specialMoves: ["Twelve's Upper", "Twelve's Stretch", "Twelve's Throw", "Twelve's Morph"],
            debutYear: 1999,
            debutGame: "Street Fighter III: 3rd Strike"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-urien",
            name: "Urien",
            bio: "A powerful and arrogant businessman with a mastery of metal and energy-based attacks. His confidence and devastating moves make him a dangerous opponent.",
            country: "Unknown",
            specialMoves: ["Aegis Reflector", "Chariot Tack", "Viper Beam", "Tyrant Slaughter"],
            debutYear: 1997,
            debutGame: "Street Fighter III: 2nd Impact"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-yang",
            name: "Yang",
            bio: "A young and skilled martial artist from Hong Kong, Yang is the twin brother of Yun. His fighting style is similar to Yun's but with unique techniques and a distinctive approach.",
            country: "Hong Kong",
            specialMoves: ["Shinryuken", "Houyoku Sen", "Teleport", "Senpuu Kyaku"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .SF3TS,
            avatar: "sf3ts-yun",
            name: "Yun",
            bio: "A dynamic and energetic fighter from Hong Kong who excels in fast-paced combat. Yun is known for his impressive speed and agility, making him a formidable opponent in battle.",
            country: "Hong Kong",
            specialMoves: ["Dragon Kick", "Shoulder Check", "Zenpo Tenshin", "Yun's Dive Kick"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        //SF3TS
        
        //USFIV
        // USFIV
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-decapre",
            name: "Decapre",
            bio: "A Russian fighter and member of the Shadaloo organization, Decapre is known for her agile movements and psycho-powered attacks.",
            country: "Russia",
            specialMoves: ["Killer Bee", "Psycho Sting", "Teleport Dash", "Cannon Spike"],
            debutYear: 2014,
            debutGame: "Ultra Street Fighter IV"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-ryu",
            name: "Ryu",
            bio: "A skilled martial artist from the United States, Ryu is known for his disciplined approach and powerful fighting techniques.",
            country: "Japan",
            specialMoves: ["Hadoken", "Shoryuken", "Tatsumaki Senpukyaku", "Shinku Hadoken"],
            debutYear: 1987,
            debutGame: "Street Fighter"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-ken",
            name: "Ken",
            bio: "An American martial artist with a fiery personality, Ken is known for his fast and powerful attacks, and his competitive spirit.",
            country: "United States",
            specialMoves: ["Hadoken", "Shoryuken", "Tatsumaki Senpukyaku", "Shoryureppa"],
            debutYear: 1987,
            debutGame: "Street Fighter"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-honda",
            name: "E.Honda",
            bio: "A sumo wrestler from Japan, E.Honda uses his massive size and strength to deliver powerful sumo techniques.",
            country: "Japan",
            specialMoves: ["Hundred Hand Slap", "Sumo Headbutt", "Sumo Splash", "Oicho Throw"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-ibuki",
            name: "Ibuki",
            bio: "A young ninja from Japan with a playful attitude, Ibuki uses her agility and ninja skills to outmaneuver her opponents.",
            country: "Japan",
            specialMoves: ["Kunai", "Tsumuji", "Yoroitoshi", "Hien"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-makoto",
            name: "Makoto",
            bio: "A determined martial artist from Japan, Makoto seeks to prove her strength with her powerful and disciplined fighting style.",
            country: "Japan",
            specialMoves: ["Fukiage", "Hayate", "Seichuusen Godanzuki", "Kaiten Senpukyaku"],
            debutYear: 1999,
            debutGame: "Street Fighter III: 3rd Strike"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-dudley",
            name: "Dudley",
            bio: "A refined boxer from the United Kingdom, Dudley combines elegance and power in his fighting style.",
            country: "United Kingdom",
            specialMoves: ["Rocket Upper", "Rolling Thunder", "Lourde's Hook", "Ducking Straight"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-seth",
            name: "Seth",
            bio: "An artificial being created by the Shadaloo organization, Seth is known for his ability to mimic other fighters' moves.",
            country: "Unknown",
            specialMoves: ["Tanden Engine", "Tanden Storm", "Seth's Shoryuken", "Seth's Hadoken"],
            debutYear: 2008,
            debutGame: "Street Fighter IV"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-gouken",
            name: "Gouken",
            bio: "The elder brother of Akuma and a master of the Ansatsuken martial art, Gouken is known for his calm demeanor and powerful techniques.",
            country: "Japan",
            specialMoves: ["Denjin Hadoken", "Gohadouken", "Shoryuken", "Tatsumaki Senpukyaku"],
            debutYear: 2008,
            debutGame: "Street Fighter IV"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-akuma",
            name: "Akuma",
            bio: "A master of the dark arts and an extremely powerful fighter, Akuma is known for his ruthless fighting style and devastating techniques.",
            country: "Japan",
            specialMoves: ["Gou Hadoken", "Gou Shoryuken", "Gou Rasen", "Shun Goku Satsu"],
            debutYear: 1994,
            debutGame: "Super Street Fighter II Turbo"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-gen",
            name: "Gen",
            bio: "A martial artist with a long history, Gen fights with a unique style that blends different martial arts techniques and his deep experience.",
            country: "China",
            specialMoves: ["Kikouken", "Mantis Slash", "Crane Kick", "Zan'ei"],
            debutYear: 1987,
            debutGame: "Street Fighter"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-dan",
            name: "Dan",
            bio: "A comical and flamboyant fighter from Japan, Dan is known for his unorthodox fighting style and humorous demeanor.",
            country: "Japan",
            specialMoves: ["Koryuken", "Dankukyaku", "Danretsu Hadoken", "Dan-Kyaku"],
            debutYear: 1995,
            debutGame: "Street Fighter Alpha"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-sakura",
            name: "Sakura",
            bio: "A high school student and enthusiastic martial artist, Sakura admires Ryu and uses her energetic style and strong techniques in battle.",
            country: "Japan",
            specialMoves: ["Shunpukyaku", "Sakura Hadoken", "Shoryuken", "Sakura Otoshi"],
            debutYear: 1996,
            debutGame: "Street Fighter Alpha 2"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-oni",
            name: "Oni",
            bio: "An evil and powerful form of Akuma, Oni possesses even greater strength and a more chaotic fighting style.",
            country: "Japan",
            specialMoves: ["Raging Demon", "Demon Armageddon", "Kozukaiten", "Shun Goku Satsu"],
            debutYear: 2010,
            debutGame: "Super Street Fighter IV: Arcade Edition"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-elena",
            name: "Elena",
            bio: "A cheerful and graceful fighter from Kenya, Elena uses her fluid and acrobatic style to fight with a unique blend of dance and combat skills.",
            country: "Kenya",
            specialMoves: ["Spinning Beat", "Sylk Dance", "Healing", "Rimoukon"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-hugo",
            name: "Hugo",
            bio: "A massive professional wrestler from Germany, Hugo relies on his immense size and strength to overpower his opponents.",
            country: "Germany",
            specialMoves: ["Hugo Drop", "Clothesline", "Giant Palm Breaker", "Flying Barcelona Attack"],
            debutYear: 1997,
            debutGame: "Street Fighter III: 2nd Impact"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-yang",
            name: "Yang",
            bio: "A swift and agile fighter from Hong Kong, Yang uses his fast and unpredictable movements to overwhelm his enemies.",
            country: "Hong Kong",
            specialMoves: ["Senkyuutai", "Raigekiraku", "Fuhajin", "Gekiro"],
            debutYear: 1997,
            debutGame: "Street Fighter III: New Generation"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-rose",
            name: "Rose",
            bio: "A fortune teller with powerful psychic abilities, Rose fights using her mystic skills and tarot-based attacks.",
            country: "Italy",
            specialMoves: ["Soul Satellite", "Soul Reflect", "Soul Throw", "Soul Spiral"],
            debutYear: 1995,
            debutGame: "Street Fighter Alpha"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-adon",
            name: "Adon",
            bio: "A Muay Thai fighter with a fierce competitive spirit, Adon seeks to prove his strength and skill in every battle.",
            country: "Thailand",
            specialMoves: ["Jaguar Kick", "Jaguar Tooth", "Adon Kick", "Jaguar Revolver"],
            debutYear: 1995,
            debutGame: "Street Fighter Alpha"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-thawk",
            name: "T.Hawk",
            bio: "A powerful Native American warrior, T.Hawk uses his incredible strength and traditional techniques to fight for his people.",
            country: "Mexico",
            specialMoves: ["Condor Dive", "Condor Spire", "Tomahawk Buster", "Hawk Talon"],
            debutYear: 1993,
            debutGame: "Super Street Fighter II: The New Challengers"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-feilong",
            name: "Fei-Long",
            bio: "A martial artist and action movie star from Hong Kong, Fei-Long incorporates his on-screen fighting skills into his real-life battles.",
            country: "Hong Kong",
            specialMoves: ["Rekkaken", "Rekkukyaku", "Shienkyaku", "Fuhajin"],
            debutYear: 1993,
            debutGame: "Super Street Fighter II: The New Challengers"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-balrog",
            name: "Balrog",
            bio: "A brutal boxer from the United States, Balrog uses his powerful punches and aggressive style to dominate in the ring.",
            country: "United States",
            specialMoves: ["Dash Straight", "Dash Upper", "Turn Punch", "Gigaton Blow"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-vega",
            name: "Vega",
            bio: "A flamboyant and agile fighter from Spain, Vega uses his acrobatic skills and claw attacks to strike with precision and flair.",
            country: "Spain",
            specialMoves: ["Flying Barcelona Attack", "Scarlet Terror", "Rolling Crystal Flash", "Sky High Claw"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-elfuerte",
            name: "El Fuerte",
            bio: "A high-energy luchador from Mexico, El Fuerte uses his speed and wrestling moves to overwhelm his opponents.",
            country: "Mexico",
            specialMoves: ["Quesadilla Bomb", "Fajita Buster", "El Fuerte Splendid", "Tostada Press"],
            debutYear: 2008,
            debutGame: "Street Fighter IV"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-rufus",
            name: "Rufus",
            bio: "A brash and energetic fighter from the United States, Rufus fights with a combination of acrobatics and flashy techniques.",
            country: "United States",
            specialMoves: ["Rufus Kick", "Rufus Dive", "Flash Kick", "Fierce Kick"],
            debutYear: 2008,
            debutGame: "Street Fighter IV"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-zangief",
            name: "Zangief",
            bio: "A powerful Russian wrestler, Zangief uses his immense strength and grappling skills to crush his enemies.",
            country: "URSS",
            specialMoves: ["Spinning Pile Driver", "Soviet Sky Rocket", "Banishing Flat", "Double Lariat"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-blanka",
            name: "Blanka",
            bio: "A wild and ferocious fighter from Brazil, Blanka uses his electrified attacks and animalistic behavior to battle his opponents.",
            country: "Brazil",
            specialMoves: ["Electric Thunder", "Rolling Attack", "Blanka Ball", "Vertical Roll"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-guile",
            name: "Guile",
            bio: "An American Air Force major, Guile uses his military training and sonic attacks to fight for justice and protect his country.",
            country: "United States",
            specialMoves: ["Sonic Boom", "Flash Kick", "Sonic Hurricane", "Guile's Backfist"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-evilryu",
            name: "Evil Ryu",
            bio: "An alternate form of Ryu consumed by the Satsui no Hado, Evil Ryu is driven by pure aggression and dark power.",
            country: "Japan",
            specialMoves: ["Raging Demon", "Evil Hadoken", "Evil Shoryuken", "Evil Tatsumaki Senpukyaku"],
            debutYear: 1996,
            debutGame: "Street Fighter Alpha 2"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-poison",
            name: "Poison",
            bio: "A fierce and intimidating fighter with a tough demeanor, Poison uses her unique blend of street fighting and whip attacks in battle.",
            country: "Unknown",
            specialMoves: ["Poison Kiss", "Whip of Love", "Poison Breath", "Poison Thorn"],
            debutYear: 1989,
            debutGame: "Final Fight"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-rolento",
            name: "Rolento",
            bio: "A former military man turned mercenary, Rolento fights using his military training and acrobatic skills.",
            country: "United States",
            specialMoves: ["Patriot Circle", "Rolling Thunder", "Knife Toss", "Pole Vault"],
            debutYear: 1989,
            debutGame: "Final Fight"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-hakan",
            name: "Hakan",
            bio: "A Turkish oil wrestler with a unique fighting style, Hakan uses his slippery moves and oil-based techniques to gain an advantage.",
            country: "Turkey",
            specialMoves: ["Oiled Up", "Oiled Slide", "Oiled Turbo", "Oiled Dive"],
            debutYear: 2010,
            debutGame: "Super Street Fighter IV"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-guy",
            name: "Guy",
            bio: "A skilled ninja with a sense of honor, Guy uses his quick and precise techniques to defeat his enemies and protect his clan.",
            country: "Japan",
            specialMoves: ["Bushinryu Shinden", "Tenshin", "Hoshokyaku", "Bushin Senpukyaku"],
            debutYear: 1989,
            debutGame: "Final Fight"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-cody",
            name: "Cody",
            bio: "A former convict turned hero, Cody fights with a mix of street brawling and prison techniques.",
            country: "United States",
            specialMoves: ["Knife Throw", "Bad Stone", "Criminal Upper", "Zonk Knuckle"],
            debutYear: 1989,
            debutGame: "Final Fight"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-deejay",
            name: "Dee Jay",
            bio: "A Jamaican fighter with a love for music and fighting, Dee Jay uses his rhythm and powerful kicks to win battles.",
            country: "Jamaica",
            specialMoves: ["Machine Gun Upper", "Jagga Kick", "Sobat", "Double Rolling Sobat"],
            debutYear: 1993,
            debutGame: "Super Street Fighter II: The New Challengers"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-cammy",
            name: "Cammy",
            bio: "A British Special Forces operative, Cammy fights with speed and precision, utilizing her military training and powerful legs.",
            country: "United Kingdom",
            specialMoves: ["Spiral Arrow", "Cannon Spike", "Hooligan Combination", "Delta Red Assault"],
            debutYear: 1993,
            debutGame: "Super Street Fighter II: The New Challengers"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-sagat",
            name: "Sagat",
            bio: "A Thai Muay Thai fighter known for his powerful strikes and massive scar, Sagat is a formidable opponent with a strong sense of honor.",
            country: "Thailand",
            specialMoves: ["Tiger Shot", "Tiger Knee", "Tiger Uppercut", "Tiger Genocide"],
            debutYear: 1987,
            debutGame: "Street Fighter"
        ),
        SFCharacter(
            title: .USFIV,
            avatar: "usfiv-bison",
            name: "M.Bison",
            bio: "The leader of the Shadaloo criminal organization, M.Bison uses his psycho power to control others and crush his enemies.",
            country: "Unknown",
            specialMoves: ["Psycho Crusher", "Scissor Kick", "Psycho Shot", "Psycho Punisher"],
            debutYear: 1991,
            debutGame: "Street Fighter II: The World Warrior"
        )
        //USFIV
    ]
}
