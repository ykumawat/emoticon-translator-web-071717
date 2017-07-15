# require modules here
require "yaml"

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  newhash = {
    "get_emoticon" => {},
    "get_meaning" => {}
  }
  emoticons.each do |key, value|
    newhash["get_emoticon"][value[0]] = value[1]
    newhash["get_meaning"][value[1]] = key
  end
  newhash
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  emoticonfile = load_library(file)
  emoticonfile["get_emoticon"].include?(emoticon) ? emoticonfile["get_emoticon"][emoticon] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emoticon)
  # code goes here
  emoticonfile = load_library(file)
  emoticonfile["get_meaning"].include?(emoticon) ? emoticonfile["get_meaning"][emoticon] : "Sorry, that emoticon was not found"
end
