require "yaml"


def load_library(file_path)
  file = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {} }
  file.each do |word, emoticons|
    

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
