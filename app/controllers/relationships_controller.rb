class RelationshipsController < ApplicationController
#controlls relationship relation table
  before_action :set_buisnesses, only: [:create, :new, :edit]
  before_action :set_people, only: [:create, :new, :edit]

  def new
    @relationship = Relationship.new
  end

  def create
    @relationship = Relationship.new(relationship_params)

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to buisnesses_path, notice: 'Relation was successfully created.' }
        format.json { render :show, status: :created, location: @relationship }
      else
        format.html { render :new }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def destroy
  end

  private

    def relationship_params
      params.require(:relationship).permit(:buisness_id, :person_id, :relation)
    end

    def set_buisnesses
      @buisnesses = Buisness.all
    end

    def set_people
      @people = Person.all
    end
end
