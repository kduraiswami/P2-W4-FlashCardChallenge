proto=User.create(name:"prototypo", pw:"allyourbases")

cards1=[
{question:"What are the house of Greyjoy words?",answer:"We do not sow", dummy_answer1:"Theons a douche", dummy_answer2:"Dead men tell no tales", dummy_answer3:"What is dead may never die"},
{question:"What does a Lannister always pay?",answer:"His debts", dummy_answer1:"Tyrions brothel bills", dummy_answer2:"it forward", dummy_answer3:"for the iron throne"},
{question:"Who built the Wall?",answer:"Bran the builder", dummy_answer1:"Mance Rayder", dummy_answer2:"Bran Stark", dummy_answer3:"Jon Snow"},
{question:"What is the sigil of the house of Baratheon?",answer:"Stag", dummy_answer1:"Direwolf", dummy_answer2:"Snake", dummy_answer3:"Trout"},
{question:"What is a sell sword?",answer:"A mercenary", dummy_answer1:"A blacksmith", dummy_answer2:"An armorer", dummy_answer3:"A knight"},
{question:"Who is the maester of winterfell?",answer:"Maester Lumen", dummy_answer1:"Maester pycell", dummy_answer2:"Qyburn", dummy_answer3:"Ned Stark"},
{question:"What is the Mountains real name?",answer:"Gregor Clegane", dummy_answer1:"Sandor Clegane", dummy_answer2:"Loomy Clegane", dummy_answer3:"Jaime Clegane"},
{question:"What is Brynden Tullys nick name?",answer:"Black Fish", dummy_answer1:"Black Sheep", dummy_answer2:"Dark Dude", dummy_answer3:"Knight at the Gate"},
{question:"What is the sigil for the house of Bolton?",answer:"flayed man", dummy_answer1:"snow fox", dummy_answer2:"squid", dummy_answer3:"kraken"},
{question:"What is the name of Theon Greyjoys sister?",answer:"Asha", dummy_answer1:"Osha", dummy_answer2:"Yara", dummy_answer3:"Lily Allen"},
{question:"Who is Daenyrss' head of unsullied?",answer:"Greyworm", dummy_answer1:"Blackhat", dummy_answer2:"Redhorn", dummy_answer3:"Whitebuck"}
]

cards2=[
{question:"What was the governors first name?",answer:"David", dummy_answer1:"Carl", dummy_answer2:"Billy", dummy_answer3:"Shane"}
{question:"Where does the series start?",answer:"Atlanta", dummy_answer1:"New York", dummy_answer2:"Texas", dummy_answer3:"Los Angeles"}
{question:"What happened to the CDC at the end of season one?",answer:"It got blown up", dummy_answer1:"It found a cure", dummy_answer2:"It was overran with walkers", dummy_answer3:"It was burned to the ground"}
{question:"Who was Dales brother?",answer:"Merle", dummy_answer1:"Chip", dummy_answer2:"Matt", dummy_answer3:"Glen"}
{question:"Who was Morgans son?",answer:"Dwayne", dummy_answer1:"Johnson", dummy_answer2:"Carl", dummy_answer3:"Sofia"}
{question:"What did Terminus end up being?",answer:"A cannibal shop", dummy_answer1:"The last stop in the road", dummy_answer2:"A cafe", dummy_answer3:"A train station"}
{question:"What was Ricks job before the apocolypse?",answer:"Sherrifs Deputy", dummy_answer1:"Souix Chef", dummy_answer2:"Baby sitter", dummy_answer3:"Cheerleader"}
{question:"What was the Governors settlement called?",answer:"Woodbury", dummy_answer1:"San Francisco", dummy_answer2:"Dev Bootcamp", dummy_answer3:"Woodstock"}
{question:"What is the name of the town they landed in after Terminus?",answer:"Alexandria", dummy_answer1:"Morgania", dummy_answer2:"DC", dummy_answer3:"Capitol Hill"}
{question:"What is Daryls weapon?",answer:"Crossbow", dummy_answer1:"His words", dummy_answer2:"Katana", dummy_answer3:"44 Magnum"}
{question:"Who were Micciones pets?",answer:"Her boyfriend and his friend", dummy_answer1:"Two random people", dummy_answer2:"Her old boss and his brother", dummy_answer3:"Her cousins"}
{question:"What was the name of the Governors daughter?",answer:"Penny", dummy_answer1:"Sofia", dummy_answer2:"Janet", dummy_answer3:"Jill"}
]


#create decks

deckofthrones=Deck.create(name:"Game of thrones")
thewalkingdeck=Deck.create(name:"The Walking Dead")


#create cards
cards1.each do |flash|
  deckofthrones.cards << Card.create(flash)
end

cards2.each do |flash|
  thewalkingdeck.cards << Card.create(flash)
end

proto.decks<<thewalkingdeck
proto.decks<<deckofthrones
