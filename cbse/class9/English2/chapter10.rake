
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ANTON CHEKHOV', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Beggar", audio_link: 'chapter1.mp3')
        sections = ['“KIND sir, have pity; turn your attention to a poor, hungry man! For three days I have had nothing to eat; I haven’t five copecks for a lodging, I swear it before God. For eight years I was a village schoolteacher and then I lost my place through intrigues. I fell a victim to calumny. It is a year now since I have had anything to do.”',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Has Lushkoff become a beggar by circumstance or by choice?',
                    'Q2:  What reasons does he give to Sergei for his telling lies?',
                    'Q3:  Is Lushkoff a willing worker? Why, then, does he agree to chop wood for Sergei?',
                    'Q4:  Sergei says, “I am happy that my words have taken effect.” Why does he say so? Is he right in saying this?',
                    'Q5:  Lushkoff is earning thirty five roubles a month. How is he obliged to Sergei for this?',
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
