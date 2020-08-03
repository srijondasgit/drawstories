
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['How do you come to know that a \'period\' is over in your school? You come to know easily that someone is at your door when he knocks or you hear the sound of the doorbell. Most of the time you can make out that someone is approaching you by just hearing the foot steps.',
                    'You might have played a game called hide and seek. In this game a person is blind-folded and has to catch the remaining players. How is the blind- folded person able to guess which player is closest to her?',
                    'Sound plays an important role in our life. It helps us to communicate with one another. We hear a variety of sounds in our surroundings.',
                    'Make a list of sounds you hear in your surroundings.',
                    'In the music room of your school you hear the sounds made by musical instruments like flute, tabla, harmonium etc. (Fig 13.1).',
                    'How is sound produced? How does it travel from one place to another? How do we hear sound? Why are some sounds louder than others? We shall discuss such questions in this chapter.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  A pendulum oscillates 40 times in 4 seconds. Find its time period and frequency.',
                    'Q2:  The sound from a mosquito is produced when it vibrates its wings at an average rate of 500 vibrations per second. What is the time period of the vibration?',
                    'Q3:  Identify the part which vibrates to produce sound in the following instruments: (a) Dholak (b) Sitar (c) Flute',
                    'Q4:  What is the difference between noise and music? Can music become noise sometimes?',
                    'Q5:  List sources of noise pollution in your surroundings.',
                    'Q6:  Explain in what way noise pollution is harmful to humans.',
                    'Q7:  Your parents are going to buy a house. They have been offered one on the roadside and another three lanes away from the roadside. Which house would you suggest your parents should buy? Explain your answer.',
                    'Q8:  Lightning and thunder take place in the sky at the same time and at the same distance from us. Lightning is seen earlier and thunder is heard later. Can you explain?',
                    'Q9:  Did you know - Golconda fort, near Hyderabad, is one of the most magnificient forts in India. It is famous for many engineering and architectural marvels. One of the marvels is the water supply system. But, perhaps, more astonishing is a dome near the entrance to the fort. A hand-clap at a particular point under the dome reverberates and can be heard at the highest point of the fort, about a kilometre away. This was devised as a warning system. If a guard saw a suspicious movement outside the fort, he clapped at the particular point under the dome, and the army inside the fort was alerted to the danger of the approaching enemy.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
