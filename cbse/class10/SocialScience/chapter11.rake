
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Political Parties", audio_link: 'chapter1.mp3')
        sections = ['In this tour of democracy, we have come across political parties several times. In Class IX, we noticed the role of political parties in the rise of democracies, in the formation of constitutional designs, in electoral politics and in the making and working of governments. In this textbook, we have glanced at political parties as vehicles of federal sharing of political power and as negotiators of social divisions in the arena of democratic politics. Before concluding this tour, let us take a close look at the nature and working of political parties, especially in our country. We begin by asking two common questions: Why do we need parties? How many parties are good for a democracy? In the light of these, we introduce the national and regional political parties in today’s India and then look at what is wrong with political parties and what can be done about it.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  State the various functions political parties perform in a democracy.',
                    'Q2:  What are the various challenges faced by political parties?',
                    'Q3:  Suggest some reforms to strengthen parties so that they perform their functions well?',
                    'Q4:  What is a political party?',
                    'Q5:  What are the characteristics of a political party?',
                    'Q6:  A group of people who come together to contest elections and hold power in the government is called a _____________________.',
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
