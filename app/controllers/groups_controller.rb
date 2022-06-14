class GroupsController < Api::V1::ApplicationV1Controller
    def index
        groups = Group.all

        render status: :ok,
               json: GroupSerializer.new(groups, serializer_options).serialized_json
    end

    def show
        group = Group.find(params[:id])

        render status: :ok,
               json: GroupSerializer.new(group, serializer_options).serialized_json
    end

    def create
        group = Group.new(Group_params)

        if Group.save
            render status: :created,
                   json: GroupSerializer.new(group).serialized_json
        else
            render status: :unprocessable_entity,
                   json: { error: group.errors.messages }
        end
    end

    def update
        group = Group.find(params[:id])

        if group.update(Group_params)
            render status: :created,
                   json: GroupSerializer.new(group, serializer_options).serialized_json
        else
            render status: :unprocessable_entity,
                   json: { error: group.errors.messages }
        end
    end

    def destroy
        group = Group.find(params[:id])

        if group.destroy
            head :no_content
        else
            render status: :unprocessable_entity,
                   json: { error: group.errors.messages }
        end
    end

    private

    def Group_params
        params.require(:group).permit(:name, :image_url)
    end

    def serializer_options
        @serializer_options ||= { include: [:characters] }
    end
end
