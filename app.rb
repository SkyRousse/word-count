require('sinatra')
require('sinatra-reloader')
require('.lib/word_count')
also_reload('.lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @target_word = params.fetch('target')
  @string = params.fetch('string')
  @result = @string.word_count(@target_word)
  erb(:result)
end
