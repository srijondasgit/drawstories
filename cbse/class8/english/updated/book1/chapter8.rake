
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'RUSKIN BOND', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A short monsoon diary", audio_link: 'chapter1.mp3')
        sections = ['June 24The first day of monsoon mist. And it\'s strange how all the birds fall silent as the mist comes climbing up the hill. Perhaps that\'s what makes the mist so melancholy; not only does it conceal the hills, it blankets them in silence too. Only an hour ago the trees were ringing with birdsong. And now the forest is deathly still as though it were midnight.',
                    'Through the mist Bijju is calling to his sister. I can hear him running about on the hillside but I cannot see him.',
                    'June 25Some genuine early- monsoon rain, warm and humid, and not that cold high-altitude stuff we\'ve been having all year. The plants seem to know it too, and the first cobra lily rears its head from the ferns as I walk up to the bank and post office.',
                    'The mist affords a certain privacy.',
                    'A school boy askedme to describe the hillstation and valley inone sentence, and all I could say was: “A paradise that might have been.”June 27The rains have heralded the arrival of some seasonalvisitors—a leopard, and several thousand leeches.',
                    'June 27The rains have heralded the arrival of some seasonalvisitors—a leopard, and several thousand leeches.',
                    'Yesterday afternoon the leopard lifted a dog from nearthe servants\' quarter below the school. In the evening it attacked one of Bijju\'s cows but fled at the approach of Bijju\'s mother, who came screaming imprecations.',
                    'As for the leeches, I shall soon get used to a little bloodletting every day.',
                    'Other new arrivals are the scarlet minivets (the females are yellow), flitting silently among the leaves like brilliant jewels. No matter how leafy the trees, these brightly coloured birds cannot conceal themselves, although, by remaining absolutely silent, they sometimes contrive to go unnoticed. Along come a pair of drongos, unnecessarily aggressive, chasing the minivets away.',
                    'A tree creeper moves rapidly up the trunk of the oak tree, snapping up insects all the way. Now that the rains are here, there is no dearth of food for the insectivorous birds.',
                    'August 2All night the rain has been drumming on the corrugated tin roof. There has been no storm, no thunder, just the steady swish of a tropical downpour. It helps me to lie awake; at the same time, it doesn\'t keep me from sleeping.',
                    'It is a good sound to read by — the rain outside, the quiet within — and, although tin roofs are given to springing unaccountable leaks, there is a feeling of being untouched by, and yet in touch with, the rain.',
                    'August 3The rain stops. The clouds begin to break up, the sun strikes the hill on my left. A woman is chopping up sticks. I hear the tinkle of cowbells. In the oak tree, a crow shakes the raindrops from his feathers and caws disconsolately. Water drips from a leaking drainpipe. And suddenly, clean and pure, the song of the whistling thrush emerges like a dark sweet secret from the depths of the ravine.',
                    'August 12Endless rain, and a permanent mist. We haven\'t seen the sun for eight or nine days. Everything damp and soggy. Nowhere to go. Pace the room, look out of the window at a few bobbing umbrellas. At least it isn\'t coldrain. The hillsides are lush as late-monsoon flowers begin to appear — wild balsam, dahlias, begonias and ground orchids.',
                    'August 31It is the last day of August, and the lush monsoon growth has reached its peak. The seeds of the cobra lily are turning red,signifying that the rains are coming to an end.',
                    'In a few days the ferns will start turning yellow, but right now they are still firm, green and upright. Ground orchids, mauve lady\'s slipper and the white butterfly orchids put on a fashion display on the grassy slopes of Landour. Wild dahlias, red, yellow and magenta, rear their heads from the rocky crevices where they havetaken hold.',
                    'Snakes and rodents, flooded out of their holes andburrows, take shelter in roofs, attics and godowns. A shrew, weak of eyesight, blunders about the rooms, much to the amusement of the children.',
                    '“Don\'t kill it,” admonishes their grandmother. “Chuchundars are lucky — they bring money!”And sure enough, I receive a cheque in the mail. Not a very large one, but welcome all the same.',
                    'October 3We have gone straight from monsoon into winter rain. Snow at higher altitudes.',
                    'After an evening hailstorm, the sky and hills are suffused with a beautiful golden light.',
                    'January 26Winter Rains in the HillsIn the hushed silence of the house when I am quite alone, and my friend, who was herehas gone, it is very lonely, very quiet, as I sit in a liquid silence, a silence within,surrounded by the rhythm of rain, the steady driftof water on leaves, on lemons, on roof, drumming on drenched dahlias and window panes,while the mist holds the house in a dark caress.',
                    'As I pause near a window, the rain stops. And starts again.',
                    'And the trees, no longer green but grey, menace me with their loneliness.',
                    'March 23Late March. End of winter.',
                    'The blackest cloud I\'ve ever seen squatted overMussoorie, and then it hailed marbles for half an hour. Nothing like a hailstorm to clear the sky. Even as I write, I see a rainbow forming.',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  When does the monsoon season begin and when does it end? How do you prepare to face the monsoon?",
                    "Q2:  Which hill-station does the author describe in this diary entry?",
                    "Q3:  For how many days does it rain without stopping? What does the author do on these days?",
                    "Q4:  Where do the snakes and rodents take shelter? Why?",
                    "Q5:  What did the author receive in the mail?",
                    "Q6:  Look carefully at the diary entries for June 24-25, August 2 and March 23. Now write down the changes that happen as the rains progress from June to March.",
                    "Q7:  Why did the grandmother ask the children not to kill the Chuchundar?",
                    'Q8:  What signs do we find in Nature which show that the monsoons are about to end?'
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
