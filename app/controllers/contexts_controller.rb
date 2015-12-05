class ContextsController < ApplicationController
  DEFAULT_CONTEXT_NAME = "personal"
  before_action :set_context, only: [:edit, :update, :destroy]

  def index
    @contexts = Context.all
  end

  def show
    @context = Context.find_by_name params.fetch(:name, DEFAULT_CONTEXT_NAME)
  end

  def new
    @context = Context.new
  end

  def edit
  end

  def create
    @context = Context.new(context_params)

    respond_to do |format|
      if @context.save
        format.html { redirect_to @context, notice: 'Context was successfully created.' }
        format.json { render :show, status: :created, location: @context }
      else
        format.html { render :new }
        format.json { render json: @context.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @context.update(context_params)
        format.html { redirect_to @context, notice: 'Context was successfully updated.' }
        format.json { render :show, status: :ok, location: @context }
      else
        format.html { render :edit }
        format.json { render json: @context.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @context.destroy
    respond_to do |format|
      format.html { redirect_to contexts_url, notice: 'Context was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_context
      @context = Context.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def context_params
      params.require(:context).permit(:name, :main)
    end
end
