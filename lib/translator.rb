# require modules here
require 'yaml'
require 'pry'

def load_library(path_file)
  library = YAML.load_file(path_file) 
  results = library.each_with_object({}) do |(emo,emo_array) , emo_library|
    emo_library[emo] = {english: emo_array[0],japanese: emo_array[1]} 
  end 
  return results
end

def get_japanese_emoticon(path_file,given_emote)
  results = load_library(path_file) 
  results.values.each do |emo| 
    if results.values[emo.index][:english] == given_emote
      translation = results.values[emo.index][:japanese]
    end 
  end 
  binding.pry 
end

def get_english_meaning
  # code goes here
end