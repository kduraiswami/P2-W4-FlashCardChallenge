# proto=User.create(username:"prototypo", password:"allyourbases")

cards1=[
{question:"What are the house of Greyjoy words?",answer:"We do not sow", dummy_answer_1:"All men must die", dummy_answer_2:"Dead men tell no tales", dummy_answer_3:"What is dead may never die"},
{question:"What does a Lannister always pay?",answer:"His debts", dummy_answer_1:"Tyrions brothel bills", dummy_answer_2:"it forward", dummy_answer_3:"for the Iron Throne"},
{question:"Who built the Wall?",answer:"Bran the builder", dummy_answer_1:"Mance Rayder", dummy_answer_2:"Bran Stark", dummy_answer_3:"Jon Snow"},
{question:"What is the sigil of the house of Baratheon?",answer:"Stag", dummy_answer_1:"Direwolf", dummy_answer_2:"Snake", dummy_answer_3:"Trout"},
{question:"What is a sell-sword?",answer:"A mercenary", dummy_answer_1:"A blacksmith", dummy_answer_2:"An armorer", dummy_answer_3:"A knight"},
{question:"Who was the Maester of Dragonstone?",answer:"Maester Cressen", dummy_answer_1:"Maester Pycell", dummy_answer_2:"Maester Qyburn", dummy_answer_3:"Maester Lumen"},
{question:"What is the Mountain's real name?",answer:"Gregor Clegane", dummy_answer_1:"Sandor Clegane", dummy_answer_2:"Loomy Clegane", dummy_answer_3:"Jaime Clegane"},
{question:"What is Brynden Tully's nick name?",answer:"Black Fish", dummy_answer_1:"Black Sheep", dummy_answer_2:"Black Knight", dummy_answer_3:"Black Blood"},
{question:"What is the sigil for the House of Bolton?",answer:"Flayed man", dummy_answer_1:"Snow Fox", dummy_answer_2:"Bear", dummy_answer_3:"Kraken"},
{question:"In the novels what is the name of Theon Greyjoy's sister?",answer:"Asha", dummy_answer_1:"Osha", dummy_answer_2:"Yara", dummy_answer_3:"Lily Allen"},
{question:"Who is Daenyrs' head of unsullied?",answer:"Greyworm", dummy_answer_1:"Blackhat", dummy_answer_2:"Redhorn", dummy_answer_3:"Whitebuck"},
{question:"What was Viscerys's nickname in Westeros?",answer:"The Beggar King", dummy_answer_1:"The Lost King", dummy_answer_2:"The Escaped King", dummy_answer_3:"The Silver Haired King"},
{question:"What is that name of Daenyrs's black dragon?",answer:"Drogon", dummy_answer_1:"Visceryron", dummy_answer_2:"Rhaegon", dummy_answer_3:"Aegon"},
{question:"What does Valar Morghulis mean?",answer:"All men must die", dummy_answer_1:"All men must serve", dummy_answer_2:"Hello", dummy_answer_3:"Grertings, traveler"},
{question:"What does Valar Doharis mean?",answer:"All men must serve", dummy_answer_1:"All men must die", dummy_answer_2:"Greetings, stranger", dummy_answer_3:"Greeting, friend"},
{question:"Where is the Fist of the First Men located?",answer:"North of the wall", dummy_answer_1:"Beyond the Reach", dummy_answer_2:"In Dorne", dummy_answer_3:"Essos"},
{question:"What is the name of Gillys child",answer:"Sam", dummy_answer_1:"Crastor", dummy_answer_2:"Tarly", dummy_answer_3:"Jon"},
{question:"What is the name of Stannis Baratheon's daughter?",answer:"Shireen", dummy_answer_1:"Walda", dummy_answer_2:"Selyse", dummy_answer_3:"Cassana"},
{question:"How did Sir Davos get his nickname \"Onion Knight?\"",answer:"He sailed into a seige and delivered Onions", dummy_answer_1:"He has an appetite for onions", dummy_answer_2:"He is prone to crying", dummy_answer_3:"he has a lot of layers to his personality"},
{question:"How did the Ruby Ford get its name?",answer:"Robert Baratheon knocked the rubies off Rhaegar's armor into the river", dummy_answer_1:"The land has many ruby mines", dummy_answer_2:"It is a marketplace for jewelry", dummy_answer_3:"It is shaped like a gem"},
{question:"Who actually poisoned King Joeffery",answer:"Olena Tyrell and Petyr Baelish", dummy_answer_1:"Sansa Stark and Tyrion Lannister", dummy_answer_2:"Tywin Lannister and Tomen Baratheon", dummy_answer_3:"Margery and Loras Tyrell"},
{question:"Why is Baelish called 'Little Finger?'",answer:"He's from a set of islands that look like fingers", dummy_answer_1:"He cut his finger off to avoid battle", dummy_answer_2:"Thats what his employees call him", dummy_answer_3:"His first brothel was called \"Little Finger\""},
{question:"Who is the current Lord of Harrenhal?",answer:"Petyr Baelish", dummy_answer_1:"Gregor Clegane", dummy_answer_2:"Harren the Black", dummy_answer_3:"House Lothson"},
{question:"Which of the following were never conquered by Aegon Targaryen?",answer:"Dorne", dummy_answer_1:"The North", dummy_answer_2:"The Reach", dummy_answer_3:"The Iron Islands"},
{question:"What was the name of Ellia Martell's oldest child?",answer:"Ageon", dummy_answer_1:"Rhaenys", dummy_answer_2:"Daenyrs", dummy_answer_3:"Oberin"},
{question:"What did Hoster Tully refer to Walder Frey as?",answer:"The late Walder Frey", dummy_answer_1:"the Toll Man", dummy_answer_2:"That Old Matchmaker", dummy_answer_3:"the Bridge Keeper"}
]

#create decks

deckofthrones=Deck.create(name:"Game of thrones")
# deckofthrones2=Deck.create(name:"Game of thrones")
# thewalkingdeck=Deck.create(name:"The Walking Dead")


#create cards
# cards3.each do |flash|
#   deckofthrones.cards << Card.create(flash)
# end

# cards2.each do |flash|
#   thewalkingdeck.cards << Card.create(flash)
# end

# proto.decks<<thewalkingdeck
# User.where(username:"prototypo").first.decks<<deckofthrones2

cards1.each do |flash|
  deckofthrones.cards << Card.create(flash)
end