get '/' do

  erb :index
end

post '/results' do 
  @input = params[:user_input]
  @answer = Word.find_by_name(@input)
  @real_answer = @answer.anagrams
  
  if @real_answer.length == 1
    "SORRY, #{@input} HAS NO ANAGRAMS"
  else
    @print_shit = " "
    @real_answer.map! do |x|
      @print_shit << x.name + " "
    end
    "HERE ARE YOUR ANAGRAMS #{@print_shit}"
  end
end
