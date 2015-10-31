class PokemonsController < ApplicationController
	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new pokemon_params
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer = current_trainer
		@pokemon.save
		if @pokemon.save
			redirect_to trainer_path(current_trainer)
		else
			render :new
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end

	def capture
		@pokemon1 = Pokemon.find params[:id]
		@pokemon1.trainer = current_trainer
		@pokemon1.save
		redirect_to root_path
	end

	def damage
		@poke = Pokemon.find params[:id]
		@poke.health -= 10
		@poke.save
		if @poke.health <= 0
			@poke.destroy
		end
		redirect_to current_trainer
	end
end
