
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'SOMERSET MAUGHAM', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Princess September", audio_link: 'chapter1.mp3')
        sections = ['It seemed to Princess September that her little bird had been away a long time. Something might have happened to him. What with hawks and with snares you never knew what trouble he might get into. Besides, he might forget her, or he might take a fancy to somebody else. Thatwould be dreadful. She wished he were safely back again.',
                    'Suddenly September heard a \'tweet-tweet\' just behind her ear and she saw the little bird sitting on her shoulder. He had come in so quietly and alighted so softly that she had not heard him.',
                    '“I wondered what on earth had become of you,” said the Princess.',
                    '“I thought you\'d wonder that,” said the little bird. “The fact is I very nearly didn\'t come back tonight at all. My father-in-law was giving a party and they all wanted me to stay, but I thought you\'d be anxious.”Under the circumstances this was a very unfortunate remark for the little bird to make.',
                    'September felt her heart go thump against her chest, and she made up her mind to take no more risks. She put up her hand and took hold of the bird. The bird suspected nothing and he was so surprised when she carried him over to the cage, popped him in, and shut the door on him that for a moment he could think of nothing to say. But in a moment or two he hopped up to the ivory perch and said, “What is the joke?”\'\'There\'s no joke,” said September, “but some of mamma\'s cats are prowling about tonight,and I think you\'re much safer in there.”“Well, just for this once I don\'t mind,” said the little bird, “solong as you let me out in the morning.”He ate a very good supper and then began to sing. But in themiddle of his song he stopped.',
                    '“I don\'t know what is the matter with me,” he said, “but I don\'tfeel like singing tonight.”“Very well,” said September, “go to sleep instead.”So he put his head under his wing and in a minute was fastasleep. September went to sleep too. But when the dawn broke she was awakened by the little bird calling her at the top of his voice.',
                    '“Wake up, wake up,” he said. “Open the door of this cage and let me out. I want to have a good fly while the dew is still on the ground.”“You are much better off where you are,” said September.',
                    '“Let me out, let me out,” said the little bird. And he tried to slip through the bars of the cage, but of course couldn\'t, and he beat against the door, but of course he couldn\'t open it. Then the eight Princesses came in and looked at him. They told September she was very wise to take their advice. They said he would soon get used to the cage and in a few days would quite forget he had ever been free. The little bird said nothing at all while they were there, but as soon as they were gone he began to cry again: “Let me out, let me out.”“Don\'t be such an old silly,” said September. “I\'ve put you in the cage because I\'m so fond of you. I know what\'s good for you much better than you do yourself. Sing me a little song and I\'ll give you a piece of sugar.”But the little bird stood in the corner of his cage looking out at the blue sky, and never sang a note.',
                    '“What\'s the good of sulking?” said September. “Why don\'t you sing and forget your troubles?”“How can I sing?” answered the bird. “I want to see the trees and the lake and the green rice growing in the fields.”“I\'ll take you out every day,” she said.',
                    '“It\'s not the same thing,” said the little bird. “The rice-fields and the lake and the willow trees look quite different when you see them through the bars of a cage.”The bird wouldn\'t sing a song and he wouldn\'t eat a thing. The Princess was a little anxious at this, and asked her sisters what they thought about it.',
                    '“You must be firm,” they said.',
                    '“But if he won\'t eat, he\'ll die,” she answered.',
                    '“That would be very ungrateful of him,” they said. “He mustknow that you\'re only thinking of his own good. If he\'s obstinate and dies it\'ll serve him right and you\'ll be well rid of him.”September didn\'t see how that was going to do her very much good, but they were eight to one andall older than she, so she saidnothing.',
                    '   “Perhaps he\'ll have got used to his cage by tomorrow,” she said.',
                    'And next day when she awoke she cried out good morning in a cheerful voice. She got no answer. She jumped out of bed and ran to the cage. She gave a startled cry, for there the little bird lay,at the bottom, on his side, with his eyes closed, and he looked as if he were dead. She opened the door and putting her hand in lifted him out. She gave a sob of relief, for she felt that his little heart was beating still.',
                    '“Wake up, wake up, little bird,” she said.',
                    'She began to cry and her tears fell on the little bird. He opened his eyes and saw that the bars of the cage were no longer around him.',
                    '“I cannot sing unless I\'m free, and if I cannot sing I die,” he said. The Princess gave a great sob.',
                    '\'\'Then take your freedom,” she said. “I shut you in a golden cagebecause I loved you and wanted to have you all to myself. But I never knew it would kill you. I love you enough to let you be happy in your own way.”She threw open the window and gently placed the little bird on the sill. He shook himself a little.',
                    '“Come and go as you will, little bird,” she said. “I will never put you in a cage any more.”“I will come because I love you, little Princess,” said the bird. “And I will sing you the loveliest songs I know. I shall go far away, but I shall always come back and I shall never forget you.” He gave himself another shake. “Good gracious me, how stiff I am,” he exclaimed.',
                    'Then he opened his wings and flew right away into the blue. But the little Princess burst into tears, for it is very difficult to put the happiness of someone you love before your own, and with her little bird far out of sight she felt, all of a sudden, very lonely. When her sisters knew what had happened they mocked her and said that the little bird would never return. But he did, at last. And he sat on September\'s shoulder and ate out of her hand and sang her the beautiful songs he had learned while he was flying up and down the fair places of the world. September kept her window open day and night so that the little bird might come into her room whenever he felt inclined, and this was very good for her; so she grew extremely beautiful.',
                    'And when she was old enough she married the King of Cambodia and was carried on a white elephant all the way to the city in which the King lived. But her sisters never slept with their windows open, so they grew extremely ugly as well as disagreeable, and when the time came to marry them off they were given away to the King\'s Councillors with a pound of tea and a Siamese cat.',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  In the following sentence elaborate the parts given in quotes. 'Under the circumstances' it was 'a very unfortunate remark' for the bird to make.",
                    "Q2:  (i) What did Princess September do to ensure the safety of her pet? (ii) How did the bird react to it?",
                    "Q3:  Why did the bird refuse to be taken out in her cage?",
                    "Q4:  (i) What persuaded Princess September to give the bird his freedom again? (ii) How did the bird react to it?",
                    "Q5:  The eight sisters kept their windows shut. How did it affect them?",
                    "Q6:  Are the sisters unkind and cruel? Find evidence in the text to support your idea.",
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
