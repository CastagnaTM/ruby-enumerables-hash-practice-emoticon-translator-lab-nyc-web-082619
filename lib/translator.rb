require "yaml"


def load_library(file_path)
  file = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {} }
  file.each do |word, emoticons|
    result["get_emoticon"][emoticons[0]] = emoticons[1]
    result["get_meaning"] [emoticons[1]] = word
  end
  result
end

def get_japanese_emoticon(file_path, emoticon)
  file = YAML.load_file(file_path)

end

def get_english_meaning
  # code goes here
end
