
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "EVENTS AND PROCESSES", audio_link: 'chapter1.mp3')
        sections = ['In 1848, Frédéric Sorrieu, a French artist, prepared a series of four prints visualising his dream of a world made up of ‘democratic and social Republics’, as he called them. The first print (Fig. 1) of the series, shows the peoples of Europe and America – men and women of all ages and social classes – marching in a long train, and offering homage to the statue of Liberty as they pass by it. As you would recall, artists of the time of the French Revolution personified Liberty as a female figure – here you can recognise the torch of Enlightenment she bears in one hand and the Charter of the Rights of Man in the other. On the earth in the foreground of the image lie the shattered remains of the symbols of absolutist institutions. In Sorrieu’s utopian vision, the peoples of the world are grouped as distinct nations, identified through their flags and national costume. Leading    the procession, way past the statue of Liberty, are the United States and Switzerland, which by this time were already nation-states. France,identifiable by the revolutionary tricolour, has just reached the statue.She is followed by the peoples of Germany, bearing the black, red and gold flag. Interestingly, at the time when Sorrieu created this image, the German peoples did not yet exist as a united nation – the flag they carry is an expression of liberal hopes in 1848 to unify the numerous German-speaking principalities into a nation-state under a democratic constitution. Following the German peoples are the peoples of Austria, the Kingdom of the Two Sicilies, Lombardy, Poland, England, Ireland, Hungary and Russia. From the heavens above, Christ, saints and angels gaze upon the scene. They have been used by the artist to symbolise fraternity among the nations of the world.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Write a note on: a) Guiseppe Mazzini b) Count Camillo de Cavour c) The Greek war of independence d) Frankfurt parliament ?',
                    'Q2:  What steps did the French revolutionaries take to create a sense of collective identity among the French people?',
                    'Q3:  Who were Marianne and Germania? What was the importance of the way in which they were portrayed?',
                    'Q4:  Briefly trace the process of German unification.',
                    'Q5:  What changes did Napoleon introduce to make the administrative system more efficient in the territories ruled by him?',
                    'Q6:  Explain what is meant by the 1848 revolution of the liberals. What were the political, social and economic ideas supported by the liberals?',
                    'Q7:  Choose three examples to show the contribution of culture to the growth of nationalism in Europe.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
