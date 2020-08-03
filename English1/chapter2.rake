
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Tsunami", audio_link: 'chapter1.mp3')
        sections = ['These stories are all from the Andaman and Nicobar archipelago.',
                    'Ignesious was the manager of a cooperative society in Katchall. His wife woke him up at 6 a.m. because she felt an earthquake. Ignesious carefully took his television set off its table and put it down on the ground so that it would not fall and break. Then the family rushed out of the house.',
                    'When the tremors stopped, they saw the sea rising. In the chaos and confusion, two of his children caught hold of the hands of their mother\'s father and mother\'s brother, and rushed in the opposite direction. He never saw them again. His wife was also swept away. Only the three other children who came with him were saved.',
                    'Sanjeev was a policeman, serving in the Katchall island of the Nicobar group of islands. He somehow managed to save himself, his wife and his baby daughter from the waves. But then he heard cries for help from the wife of John, the guesthouse cook. Sanjeev jumped into the water to rescue her, but they were both swept away.',
                    'Thirteen year-old Meghna was swept away along with her parents and seventy-seven other people. She spent two days floating in the sea, holding on to a wooden door. Eleven times she saw relief helicopters overhead, but they did not see her. She was brought to the shore by a wave, and was found walking on the seashore in a daze.',
                    'Almas Javed was ten years old. She was a student of Carmel Convent in Port Blair where her father had a petrol pump. Her mother Rahila\'s home was in Nancowry island. The family had gone there to celebrate Christmas.',
                    'When the tremors came early in the morning, the family was sleeping. Almas\'s father saw the sea water recede. He understood that the water would come rushing back with great force. He woke everyone up and tried to rush them to a safer place.',
                    'As they ran, her grandfather was hit on the head by something and he fell down. Her father rushed to help him. Then came the first giant wave that swept both of them away.',
                    'Almas\'s mother and aunts stood clinging to the leaves of a coconut tree, calling out to her. A wave uprooted the tree, and they too were washed away.',
                    'Almas saw a log of wood floating. She climbed on to it. Then she fainted. When she woke up, she was in ahospital in Kamorta. From there she was brought to Port Blair.',
                    'The little girl does not want to talk about the incident with anyone. She is still traumatised.',
                    'Tilly Smith (a British school girl) was able to save many lives when the tsunami struck Phuket beach in Thailand. Though she has won a number of awards, her parents have not allowed their daughter to be interviewed on television and made into a heroine. Why do you think they took that decision?',
                    'Now here is a story from Thailand.',
                    'The Smith family from South-East England were celebrating Christmas at a beach resort in southern Thailand. Tilly Smith was a ten-year-old schoolgirl; her sister was seven years old. Their parents were Penny and Colin Smith.',
                    'It was 26 December 2004. Deadly tsunami waves were already on their way. They had been triggered by a massive earthquake off northern Sumatra earlier that morning.',
                    '“The water was swelling and kept coming in,” Penny Smith remembered. “The beach was getting smaller and smaller. I didn\'t know what was happening.”',
                    'But Tilly Smith sensed that something was wrong. Her mind kept going back to a geography lesson she had taken in England just two weeks before she flew out to Thailand with her family.',
                    'Tilly saw the sea slowly rise, and start to foam, bubble and form whirlpools. She remembered that she had seen this in class in a video of a tsunami that had hit the Hawaiian islands in 1946. Her geography teacher had shown her class the video, and told them that tsunamis can be caused by earthquakes, volcanoes and landslides.',
                    'Tilly started to scream at her family to get off the beach. “She talked about an earthquake under the sea. She got more and more hysterical,” said her mother Penny. “I didn\'t know what a tsunami was. But seeing my daughter so frightened, I thought something serious must be going on.”Tilly\'s parents took her and her sister away from the beach, to the swimming pool at the hotel. A number of other tourists also left the beach with them. “Then it was as if the entire sea had come out after them. I was screaming, \'Run!\'”The family took refuge in the third floor of the hotel. The building withstood the surge of three tsunami waves. If they had stayed on the beach, they would not have been alive.',
                    'The Smiths later met other tourists who had lost entire families. Thanks to Tilly and her geography lesson, they had been forewarned. Tilly went back to her school in England and told her classmates her terrifying tale.',
                    'Before the giant waves slammed into the coast in India and Sri Lanka, wild and domestic animals seemed to know what was about to happen. They fled to safety. According to eyewitness accounts, elephants screamed and ran for higher ground; dogs refused to go outdoors; flamingoes abandoned their low-lying breeding areas; and zoo animals rushed into their shelters and could not be enticed to come back out.',
                    'Many people believe that animals possess a sixth sense and know when the earth is going to shake. Some experts believe that animals\' more acute hearing helps them to hear or feel the earth\'s vibration. They can sense an approaching disaster long before humans realise what\'s going on.',
                    'We cannot be sure whether animals have a sixth sense or not. But the fact is that the giant waves that rolled through the Indian Ocean killed more than 150,000 people in a dozen countries; but not many animals have been reported dead.',
                    'Along India\'s Cuddalore coast, where thousands of people perished, buffaloes, goats and dogs were found unharmed. The Yala National Park in Sri Lanka is home to a variety of animals including elephants, leopards, and 130 species of birds. Sixty visitors were washed away from the Patanangala beach inside the park; butno animal carcasses were found, except for two water buffaloes. About an hour before the tsunami hit, people at Yala National Park had observed three elephants running away from the Patanangala beach.',
                    'A Sri Lankan gentleman who lives on the coast near Galle said his two dogs would not go for their daily run on the beach. “They are usually excited to go on this outing,” he said. But on that day they refused to go, and most probably saved his life.',             
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end

                  questions = [
                    "Q1:  When he felt the earthquake, do you think Ignesious immediately worried about a tsunami? Give reasons for your answer. Which sentence in the text tells you that the Ignesious family did not have any time to discuss and plan their course of action after the tsunami struck?",
                    "Q2:  Which words in the list below describe Sanjeev, in your opinion? (Look up the dictionary for words that you are not sure of.) cheerful ambitious brash brave careless heroic selfless heartless humorous",
                    "Q3:  How are Meghna and Almas’s stories similar?",
                    "Q4:  What are the different ways in which Tilly’s parents could have reacted to her behaviour? What would you have done if you were in their place?",
                    "Q5:  If Tilly’s award was to be shared, who do you think she should share it with — her parents or her geography teacher?",
                    "Q6:  What are the two different ideas about why so few animals were killed in the tsunami? Which idea do you find more believable?",
                    "Q7:  The story shows how a little girl saved the lives of many tourists when a tsunami struck the beach, thanks to the geography lesson that she had learnt at school. She remembered the visuals of a tsunami and warned her parents.",
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
