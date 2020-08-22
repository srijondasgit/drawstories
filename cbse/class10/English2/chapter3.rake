
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ROBERT ARTHUR', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Midnight Visitor", audio_link: 'chapter1.mp3')
        sections = ['AUSABLE did not fit any description of a secret agent Fowler had ever read. Following him down the musty corridor of the gloomy French hotel where Ausable had a room, Fowler felt let down. It was a small room, on the sixth and top floor, and scarcely a setting for a romantic adventure.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  “Ausable did not fit any description of a secret agent Fowler had  ever read.” What do secret agents in books and films look like, in your opinion? Discuss in groups or in class some stories or movies featuring spies, detectives and secret agents, and compare their appearance with that of Ausable in this story. (You may mention characters from fiction in languages other than English. In English fiction you may have come across Sherlock Holmes, Hercule Poirot, or Miss Marple. Have you watched any movies featuring James Bond?)',
                    'Q2:  How does Ausable manage to make Max believe that there is a balcony attached to his room? Look back at his detailed description of it. What makes it a convincing story?',
                    'Q3:  Looking back at the story, when do you think Ausable thought up his plan for getting rid of Max? Do you think he had worked out his plan in detail right from the beginning? Or did he make up a plan taking advantage of events as they happened?',
                    'Q4:  In this story, Ausable shows great ‘presence of mind,’ or the ability to think quickly, and act calmly and wisely, in a situation of danger and surprise. Give examples from your own experience, or narrate a story, which shows someone’s presence of mind.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
