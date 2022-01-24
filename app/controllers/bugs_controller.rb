class BugsController < ApplicationController
    def index
        bugs = Bug.all
        render json: bugs.to_json(except: [:created_at, :updated_at])
    end

    def show
        bug = Bug.find_by(id: params[:id])
        render json: bug.to_json(except: [:created_at, :updated_at])
    end

    def create
        binding.pry
    end
end