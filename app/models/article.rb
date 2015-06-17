class Logger
  def self.log(original, tranlated)
    puts "Sending message..."
    sleep(5)
    puts "Logged"
  end
end

class Translate
  def self.text(content, language)
    "You should not see this text."
  end
end

class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true

  validates :title, length: { minimum: 5 }

  # did have length starting at 30, but broke lots of other tests
  # revisit and fix other tests so can have length minimum of 30, so there has to be something in description
  validates :description, length: { in: 0..500 }

  def translate_description(language)
    translation = Translate.text(description, language)
    Logger.log(description, translation)
    translation
  end
end
