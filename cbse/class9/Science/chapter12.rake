
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "SOUND", audio_link: 'chapter1.mp3')
        sections = ['Everyday we hear sounds from various sources like humans, birds, bells, machines, vehicles, televisions, radios etc. Sound is a form of energy which produces a sensation of hearing in our ears. There are also other forms of energy like mechanical energy, light energy, etc. We have talked about mechanical energy in the previous chapters. You have been taught about conservation of energy, which states that we can neither create nor destroy energy. We can just change it from one form to another. When you clap, a sound is produced. Can you produce sound without utilising your energy? Which form of energy did you use to produce sound? In this chapter we are going to learn how sound is produced and how it is transmitted through a medium and received by our ears.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is sound and how is it produced?',
                    'Q2:  Describe with the help of a diagram, how compressions and rarefactions are produced in air near a source of sound.',
                    'Q3:  Cite an experiment to show that sound needs a material medium for its propagation.',
                    'Q4:  Why is sound wave called a longitudinal wave?',
                    'Q5:  Which characteristic of the sound helps you to identify your friend by his voice while sitting with others in a dark room?',
                    'Q6:  Flash and thunder are produced simultaneously. But thunder is heard a few seconds after the flash is seen, why?',
                    'Q7:  The frequency of a source of sound is 100 Hz. How many times does it vibrate in a minute?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
