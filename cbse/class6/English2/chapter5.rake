
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Tansen", audio_link: 'chapter1.mp3')
        sections = [   "YOU may have heard the name of Tansen — the greatest musician our country has produced. A singer called Mukandan Misra and his wife lived in Behat near Gwalior. Tansen was their only child. It is said that he was a naughty child. Often, he ran away to play in the forest, and soon learnt to imitate perfectly the calls of birds and animals.",
                    'Please refer your text book for the rest of the course',
                    ] 
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Why did Swami Haridas say Tansen was ‘talented’? ",
                    "Q2:  Why did Akbar ask Tansen to join his court?",
                    "Q3:  How do we know that Akbar was fond of Tansen? Give two reasons. ",
                    "Q4:  What did the other courtiers feel about Tansen?",
                    "Q5:  Why did Tansen agree to sing Raga Deepak?",
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
