
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Understanding Laws", audio_link: 'chapter1.mp3')
        sections = ['You may be familiar with some laws such as those that specify the age of marriage, the age at which a person can vote, and perhaps even the laws dealing with buying and selling of property. We now know that the Parliament is in charge of making laws. Do these laws apply to everyone? How do new laws come into being? Could there be laws that are unpopular or controversial? What should we as citizens do under such circumstances?',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Write in your own words what you understand by the term the ‘rule of law’. In your response include a fictitious or real example of a violation of the rule of law.',
                    'Q2:  State two reasons why historians refute the claim that the British introduced the rule of law in India.',
                    'Q3:  Re-read the storyboard on how a new law on domestic violence got passed. Describe in your own words the different ways in which women’s groups worked to make this happen.',
                    'Q4:  Write in your own words what you understand by the following sentence on page 44-45: They also began fighting for greater equality and wanted to change the idea of law from a set of rules that they were forced to obey, to law as including ideas of justice.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
