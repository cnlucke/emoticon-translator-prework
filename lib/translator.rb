require "yaml"

def load_library(file_path)
  file_hash = YAML::load_file(file_path)
  new_hash = {}
  new_hash[get_meaning] = {}
  new_hash[get_emoticon] = {}
  meaning_holder = ""

  file_hash.each do |meaning, emoticons|
    new_hash["get_emoticon"][meaning] = emoticons
    meaning_holder = meaning
    emoticons.each do |emoticon|
      new_hash["get_meaning"][emoticon] = meaning_holder
    end
  end

  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
