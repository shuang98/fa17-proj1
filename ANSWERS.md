# Q0: Why is this error being thrown?
Haven't created Pokemon model yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are appearing randomly. The don't have trainers.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a button that sends a patch request with the url of 'capture path' with the id of the pokemon as a parameter.

# Question 3: What would you name your own Pokemon?
mr.poopybutthole

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path(trainer_id), where trainer_id was the id of the damaged pokemon's trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It stores the errors in 'flash' in forms of sentences. This 'flash' is then given to the form for it to render the error mesages.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
