
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Part II MULTIPLE INTELLIGENCES", 
                     audio_link: 'chapter1.mp3')

        sections = ['Each one of us is skilled or good at something. But do you know that different people are intelligent in different ways?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  When I enjoy dancing or physical activity, I use my...............  intelligence",
                    "Q2:  When I enjoy looking at maps and examining pictures I use my............ intelligence",
                    "Q3:  When I enjoy working with numbers and solving maths problems I use my ............. intelligence. ",
                    "Q4:  When I enjoy telling a story or arguing, I use my .................... intelligence",
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
