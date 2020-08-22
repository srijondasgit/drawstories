
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MINERALS AND ENERGY RESOURCES", audio_link: 'chapter1.mp3')
        sections = ['We use different things in our daily life made from metal. Can you list a number of items used in your house made of metals. Where do these metals come from? You have studied that the earth’s crust is made up of different minerals embedded in the rocks. Various metals are extracted from these minerals after proper refinement.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Distinguish between the following in not more than 30 words.(a) ferrous and non-ferrous minerals (b) conventional and non-conventional sources of energy',
                    'Q2:  What is a mineral?',
                    'Q3:  How are minerals formed in igneous and metamorphic rocks?',
                    'Q4:  Why do we need to conserve mineral resources ?',
                    'Q5:  Describe the distribution of coal in India.',
                    'Q6:  Why do you think that solar energy has a bright future in India?',
                           ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
