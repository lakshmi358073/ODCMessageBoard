class CreateCategoriesController < ApplicationController
  # GET /create_categories
  # GET /create_categories.json
  def index
    @create_categories = CreateCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @create_categories }
    end
  end

  # GET /create_categories/1
  # GET /create_categories/1.json
  def show
    @create_category = CreateCategory.find(params[:id])
    @posts = Post1.find_all_by_category(@create_category.name)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @create_category }
    end
  end

  # GET /create_categories/new
  # GET /create_categories/new.json
  def new
    @create_category = CreateCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @create_category }
    end
  end

  # GET /create_categories/1/edit
  def edit
    @create_category = CreateCategory.find(params[:id])
  end

  # POST /create_categories
  # POST /create_categories.json
  def create
    @create_category = CreateCategory.new(params[:create_category])
    Rails.logger.info("Error is: #{@create_category.errors}")
    

    respond_to do |format|
      if @create_category.save
        format.html { redirect_to @create_category, notice: 'Create category was successfully created.' }
        format.json { render json: @create_category, status: :created, location: @create_category }
      else
        format.html { render action: "new" }
        format.json { render json: @create_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /create_categories/1
  # PUT /create_categories/1.json
  def update
    @create_category = CreateCategory.find(params[:id])

    respond_to do |format|
      if @create_category.update_attributes(params[:create_category])
        format.html { redirect_to @create_category, notice: 'Create category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @create_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_categories/1
  # DELETE /create_categories/1.json
  def destroy
    @create_category = CreateCategory.find(params[:id])
    @create_category.destroy

    respond_to do |format|
      format.html { redirect_to create_categories_url }
      format.json { head :no_content }
    end
  end
end
