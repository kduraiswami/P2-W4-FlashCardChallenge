proto=User.create(username:"prototypo", password:"allyourbases")

cards1=[
{question:"What are the house of Greyjoy words?",answer:"We do not sow", dummy_answer_1:"Theons a douche", dummy_answer_2:"Dead men tell no tales", dummy_answer_3:"What is dead may never die"},
{question:"What does a Lannister always pay?",answer:"His debts", dummy_answer_1:"Tyrions brothel bills", dummy_answer_2:"it forward", dummy_answer_3:"for the iron throne"},
{question:"Who built the Wall?",answer:"Bran the builder", dummy_answer_1:"Mance Rayder", dummy_answer_2:"Bran Stark", dummy_answer_3:"Jon Snow"},
{question:"What is the sigil of the house of Baratheon?",answer:"Stag", dummy_answer_1:"Direwolf", dummy_answer_2:"Snake", dummy_answer_3:"Trout"},
{question:"What is a sell sword?",answer:"A mercenary", dummy_answer_1:"A blacksmith", dummy_answer_2:"An armorer", dummy_answer_3:"A knight"},
{question:"Who is the maester of winterfell?",answer:"Maester Lumen", dummy_answer_1:"Maester pycell", dummy_answer_2:"Qyburn", dummy_answer_3:"Ned Stark"},
{question:"What is the Mountains real name?",answer:"Gregor Clegane", dummy_answer_1:"Sandor Clegane", dummy_answer_2:"Loomy Clegane", dummy_answer_3:"Jaime Clegane"},
{question:"What is Brynden Tullys nick name?",answer:"Black Fish", dummy_answer_1:"Black Sheep", dummy_answer_2:"Dark Dude", dummy_answer_3:"Knight at the Gate"},
{question:"What is the sigil for the house of Bolton?",answer:"flayed man", dummy_answer_1:"snow fox", dummy_answer_2:"squid", dummy_answer_3:"kraken"},
{question:"What is the name of Theon Greyjoys sister?",answer:"Asha", dummy_answer_1:"Osha", dummy_answer_2:"Yara", dummy_answer_3:"Lily Allen"},
{question:"Who is Daenyrss' head of unsullied?",answer:"Greyworm", dummy_answer_1:"Blackhat", dummy_answer_2:"Redhorn", dummy_answer_3:"Whitebuck"}
]

cards2=[
{question:"What was the governors first name?",answer:"David", dummy_answer_1:"Carl", dummy_answer_2:"Billy", dummy_answer_3:"Shane"},
{question:"Where does the series start?",answer:"Atlanta", dummy_answer_1:"New York", dummy_answer_2:"Texas", dummy_answer_3:"Los Angeles"},
{question:"What happened to the CDC at the end of season one?",answer:"It got blown up", dummy_answer_1:"It found a cure", dummy_answer_2:"It was overran with walkers", dummy_answer_3:"It was burned to the ground"},
{question:"Who was Dales brother?",answer:"Merle", dummy_answer_1:"Chip", dummy_answer_2:"Matt", dummy_answer_3:"Glen"},
{question:"Who was Morgans son?",answer:"Dwayne", dummy_answer_1:"Johnson", dummy_answer_2:"Carl", dummy_answer_3:"Sofia"},
{question:"What did Terminus end up being?",answer:"A cannibal shop", dummy_answer_1:"The last stop in the road", dummy_answer_2:"A cafe", dummy_answer_3:"A train station"},
{question:"What was Ricks job before the apocolypse?",answer:"Sherrifs Deputy", dummy_answer_1:"Souix Chef", dummy_answer_2:"Baby sitter", dummy_answer_3:"Cheerleader"},
{question:"What was the Governors settlement called?",answer:"Woodbury", dummy_answer_1:"San Francisco", dummy_answer_2:"Dev Bootcamp", dummy_answer_3:"Woodstock"},
{question:"What is the name of the town they landed in after Terminus?",answer:"Alexandria", dummy_answer_1:"Morgania", dummy_answer_2:"DC", dummy_answer_3:"Capitol Hill"},
{question:"What is Daryls weapon?",answer:"Crossbow", dummy_answer_1:"His words", dummy_answer_2:"Katana", dummy_answer_3:"44 Magnum"},
{question:"Who were Micciones pets?",answer:"Her boyfriend and his friend", dummy_answer_1:"Two random people", dummy_answer_2:"Her old boss and his brother", dummy_answer_3:"Her cousins"},
{question:"What was the name of the Governors daughter?",answer:"Penny", dummy_answer_1:"Sofia", dummy_answer_2:"Janet", dummy_answer_3:"Jill"}
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
