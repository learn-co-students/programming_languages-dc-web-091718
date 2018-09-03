require 'pry'

def reformat_languages(languages)
  reformatted_languages = {}
  
  languages.each do |language_type, array_of_languages|
    array_of_languages.each do |language_name, language_details|
      if reformatted_languages.keys.include?(language_name)
        reformatted_languages[language_name][:style] << language_type
      else
        reformatted_languages[language_name] = {
          type: language_details[:type],
          style: [language_type]
          
        }
      end
    end
  end
  
  reformatted_languages
  
end

