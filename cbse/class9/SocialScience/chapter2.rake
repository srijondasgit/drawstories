
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Socialism in Europe and the Russian Revolution", audio_link: 'chapter1.mp3')
        sections = ['In the previous chapter you read about the powerful ideas of freedom and equality that circulated in Europe after the French Revolution.The French Revolution opened up the possibility of creating a dramatic change in the way in which society was structured. As you have read, before the eighteenth century society was broadly divided into estates and orders and it was the aristocracy and church which controlled economic and social power. Suddenly, after the revolution,it seemed possible to change this. In many parts of the world including Europe and Asia, new ideas about individual rights and who controlled social power began to be discussed. In India, Raja Rammohan Roy and Derozio talked of the significance of the French Revolution, and many others debated the ideas of post-revolutionary Europe. The developments in the colonies, in turn, reshaped these ideas of societal change.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What were the social, economic and political conditions in Russia before 1905?',
                    'Q2:  In what ways was the working population in Russia different from other countries in Europe, before 1917?',
                    'Q3:  Why did the Tsarist autocracy collapse in 1917?',
                    'Q4:  Make two lists: one with the main events and the effects of the February Revolution and the other with the main events and effects of the October Revolution. Write a paragraph on who was involved in each, who were the leaders and what was the impact of each on Soviet history.',
                    'Q5:  What were the main changes brought about by the Bolsheviks immediately after the October Revolution?',
                    'Q6:  Write a few lines to show what you know about: (a)kulaks (B) the Duma (c) women workers between 1900 and 1930 (d)the Liberals (e) Stalin’s collectivisation programme.',
                        ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
