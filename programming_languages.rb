def reformat_languages(languages)
	new_hash = {}
	languages.each do |style, langs|
		langs.each do |lang, att|
			
			if new_hash.key?(lang) 
				new_hash[lang][:style] << style
			else
				new_hash[lang] = att
				att[:style] = [style]
			end
		end
	end
	new_hash
end
