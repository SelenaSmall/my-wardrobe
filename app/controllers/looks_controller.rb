class LooksController < ApplicationController
  before_action :set_look, only: [:show, :edit, :update, :destroy]

  def index
    @looks = Look.all.includes(:items, :tags).map { |look|
      {
          id: look.id,
          name: look.name,
          items: look.items.map(&:image),
          tags: look.tags.map(&:name),
          editPath: edit_look_url(look),
          deletePath: look_url(look)
      }
    }
  end

  def show
  end

  def new
    @look = Look.new
  end

  def edit
  end

  def create
    @look = Look.new(look_params)

    respond_to do |format|
      if @look.save
        format.html { redirect_to looks_path, notice: 'Look was successfully created.' }
        format.json { render :index, status: :created, location: @look }
      else
        format.html { render :new }
        format.json { render json: @look.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @look.update(look_params)
        format.html { redirect_to looks_path, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @look }
      else
        format.html { render :edit }
        format.json { render json: @look.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @look.destroy
    head :no_content
  end

  private

  def set_look
    @look = Look.find(params[:id])
  end

  def look_params
    params.require(:look).permit(:name, tag_ids: [], item_ids: [])
  end
end
