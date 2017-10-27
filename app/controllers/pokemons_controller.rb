class PokemonsController < ApplicationController
    def capture
        pokemon = Pokemon.find(params[:id])
        pokemon.trainer = current_trainer
        pokemon.save
        redirect_to root_path
    end

    def damage
        pokemon = Pokemon.find(params[:id])
        pokemon.health -= 10
        pokemon.save
        attacker = Pokemon.find(params[:attacker_id])
        attacker.level += 1
        attacker.save
        trainer_id = pokemon.trainer_id
        redirect_to trainer_path(trainer_id)
    end
    def heal
        pokemon = Pokemon.find(params[:id])
        pokemon.health += 10
        pokemon.save
        trainer_id = pokemon.trainer_id
        redirect_to trainer_path(trainer_id)
    end
    def new
        @pokemon = Pokemon.new
    end
    def create
        pokemon = Pokemon.new(pokemon_params)
        pokemon.health = 100
        pokemon.level = 1
        pokemon.trainer = current_trainer
        if pokemon.save
            redirect_to trainer_path(pokemon.trainer)
        else
            flash[:error] = pokemon.errors.full_messages.to_sentence
            redirect_to pokemons_new_path
        end
    end

    private
    def pokemon_params
        params.require(:pokemon).permit(:name)
    end
end
