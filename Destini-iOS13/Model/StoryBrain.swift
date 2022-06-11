import Foundation

struct StoryBrain {
    let arrayOfStories = [
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'",
            choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
            choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
        ),
        Story(
            title: "He nods slowly, unfazed by the question.",
            choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
            choice2: "Wait, I know how to change a tire.", choice2Destination: 3
        ),
        Story(
            title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
            choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
        ),
        Story(
            title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
        
        let arrayOfStoriesOnRussian = [
            Story(
                title: "У вашей машины лопнула шина на извилистой дороге в глуши, где нет сотовой связи. Вы решаете поехать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Человек в широкополой шляпе с бездушными глазами открывает пассажирскую дверь и спрашивает: «Подвезти, мальчик?",
                choice1: "Я прыгну. Спасибо за помощь!", choice1Destination: 2,
                choice2: "Лучше сначала спроси его, убийца ли он", choice2Destination: 1
            ),
            Story(
                title: "Он медленно кивает, не обращая внимания на вопрос",
                choice1: "По крайней мере, он честный. Я залезу", choice1Destination: 2,
                choice2: "Подожди, я знаю, как поменять шину", choice2Destination: 3
            ),
            Story(
                title: "Когда вы садитесь за руль, незнакомец начинает рассказывать о своих отношениях с матерью. Он становится все злее и злее с каждой минутой. Он просит вас открыть бардачок. Внутри вы найдете окровавленный нож, два отрубленных пальца и кассету с записью Элтона Джона. Он тянется к перчаточному ящику",
                choice1: "Я люблю Элтона Джона! Дайте ему кассету", choice1Destination: 5,
                choice2: "Либо он, либо я! Вы берете нож и наносите ему удар", choice2Destination: 4
            ),
            Story(
                title: "Что? Какая отмазка! Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти от несчастных случаев для большинства взрослых возрастных групп?",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "Когда вы разбиваете ограждение и кренитесь к зазубренным камням внизу, вы размышляете о сомнительной мудрости нанесения удара ножом кому-то, когда он ведет машину, в которой вы находитесь",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "Вы связываетесь с убийцей, напевая стихи «Чувствуете ли вы любовь сегодня вечером?». Он высадит вас в следующем городе. Прежде чем вы уйдете, он спрашивает вас, знаете ли вы какие-нибудь хорошие места, где можно сбросить тела. Вы отвечаете: «Попробуйте на пирсе».",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            )
    ]
    
    var storyNumber = 0
    var storiesWithSelectedlanguage = [Story]()
    
    func getTitle() -> String {
        storiesWithSelectedlanguage[storyNumber].title
    }
    
    func getChoice() -> [String] {
        [storiesWithSelectedlanguage[storyNumber].choice1, storiesWithSelectedlanguage[storyNumber].choice2]
    }
    
    mutating func nextStory(_ userChoice: String) -> Void {
        if userChoice == storiesWithSelectedlanguage[storyNumber].choice1 {
            storyNumber = storiesWithSelectedlanguage[storyNumber].choice1Destination
        }
        else {
            storyNumber = storiesWithSelectedlanguage[storyNumber].choice2Destination
        }
    }
    
    mutating func chooseLanguage(_ userChoice: String) -> Void {
        if userChoice == "English" {
            storiesWithSelectedlanguage = arrayOfStories
        }
        else {
            storiesWithSelectedlanguage = arrayOfStoriesOnRussian
        }
    }
}


