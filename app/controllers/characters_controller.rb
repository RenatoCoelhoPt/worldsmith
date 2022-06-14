class CharactersController < Api::V1::ApplicationV1Controller
    def index
        characters = Character.all

        render status: :ok,
               json: CharacterSerializer.new(characters, serializer_options).serialized_json
    end

    def show
        character = Character.find(params[:id])

        render status: :ok,
               json: CharacterSerializer.new(character, serializer_options).serialized_json
    end

    def create
        character = Character.new(character_params)

        if character.save
            render status: :created,
                   json: CharacterSerializer.new(character).serialized_json
        else
            render status: :unprocessable_entity,
                   json: { error: character.errors.messages }
        end
    end

    def update
        character = Character.find(params[:id])

        if character.update(character_params)
            render status: :created,
                   json: CharacterSerializer.new(character, serializer_options).serialized_json
        else
            render status: :unprocessable_entity,
                   json: { error: character.errors.messages }
        end
    end

    def destroy
        character = Character.find(params[:id])

        if character.destroy
            head :no_content
        else
            render status: :unprocessable_entity,
                   json: { error: character.errors.messages }
        end
    end

    private

    def character_params
        params.require(:character).permit(:name, :image_url)
    end

    def serializer_options
        @serializer_options ||= { include: [:groups] }
    end
end
