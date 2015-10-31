# Q0: Why is this error being thrown?
	There is no model called Pokemon yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	All the pokemon are trainerless.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	capture_path (found in rake routes) tells the button to go to that address to call the capture method, and id: @pokemon tells it to call that action on the @pokemon object

# Question 3: What would you name your own Pokemon? 
	current_trainer.pokemons to access all the pokemons you currenetly have

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here? 
	current_trainer-- this is not a path, but redirecting it to this instance variable does the same thing


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	flashes are name/value hash pairs, calling it on :error tells it to get the value in case there is an error. @pokemon.errors.full_messages.to_sentence just gets the errors from the pokemon instance and converts it to a message

# Give us feedback on the project and decal below!
	This was a good project and the instructions were pretty clear, which made it pretty doable. In class, sometimes the lectures can be kind of hard to follow and understand, and I think it would be more helpful if you slowed the steps down and we could follow along on the same project on our laptops.

# Extra credit: Link your Heroku deployed app
