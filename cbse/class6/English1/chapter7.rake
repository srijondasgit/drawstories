
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'adapted from Span January February 1998', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "An Indian – American Woman in Space: Kalpana Chawla Woman in Space:", audio_link: 'chapter1.mp3')

        sections = ['KALPANA Chawla said that she never dreamed, as a child in Karnal, that she would cross the frontiers of space. It was enough that her parents allowed her to attend engineering college after she graduated from Tagore School.', 
                    
                     'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Where was Kalpana Chawla born? Why is she called an Indian – American?",
                    "Q2:  When and why did she go to the U.S.? Who did she marry?",
                    "Q3:  How did she become an astronaut? What gave her the idea that she could be an astronaut? ",
                    "Q4:  What abilities must an astronaut have,according to the journalist?",
                    "Q5:  Describe Kalpana Chawla’s first mission in space.",
                    "Q6:  What does Kalpana Chawla say about pursuing a dream? Do you agree with her that success is possible?",
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
