require "yaml"


def load_library(file_path)
  translator = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {} }
  translator.each do |word, emoticons|
    result["get_emoticon"][emoticons[0]] = emoticons[1]
    result["get_meaning"] [emoticons[1]] = word
  end
  result
end

def get_japanese_emoticon(file_path, emoticon)
  translator = load_library(file_path)
  translation = translator["get_emoticon"][emoticon]
  if !translation
   return "Sorry, that emoticon was not found"
 else
   return translation
 end
end

def get_english_meaning
  # code goes here
end
