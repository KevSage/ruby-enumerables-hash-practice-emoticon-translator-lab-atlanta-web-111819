require "yaml"
require 'pry'

def load_library(library)
  #Load YAML file
  emoticons = YAML.load_file(library)
  # We must create a new hash from scratch with the two keys "get_emoticon"
  # and "get_meaning"
  emoji_hash = Hash.new
  #Set the keys of new_Hash
  emoji_hash["get_emoticon"] = Hash.new
  emoji_hash["get_meaning"] = Hash.new

  emoticons.each do |english, emoticons|
    emoji_hash["get_emoticon"][emoticons[0]] = emoticons[1]
    emoji_hash["get_meaning"][emoticons[1]] = english

  end
  binding.pry


    #emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    #emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  #end
  #emoticon_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
