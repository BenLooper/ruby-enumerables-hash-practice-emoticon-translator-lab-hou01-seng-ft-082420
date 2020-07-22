# require modules here
require 'yaml'
require 'pry'

def load_library(path_file)
  library = YAML.load_file(path_file) 
  results = library.each_with_object({}) do |(emo,emo_array) , emo_library|
    emo_array[:english] = emo_array
  end 
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end