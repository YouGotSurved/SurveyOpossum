class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy, :take]
  # before_action :set_take_survey, only: [:take]
  before_action :logged_in?

  # GET /surveys
  def index
    @surveys = Survey.where(author_id: session["author_id"])
  end

  # GET /surveys/1
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
    @survey.questions.build
  end

  # GET /surveys/1/edit
  def edit
    @survey.questions.build
  end

  # POST /surveys
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to @survey, notice: 'Survey was successfully created.'
    else
      render :new
    end
  end

  def take
    @taker = Taker.create
  end

  def store
    survey = Survey.find(params[:id])

    if survey.update!(survey_params)
      survey.reload
      redirect_to surveys_url, notice: "Thanks for completing this survey!"
    end
  end

  def results
    @survey = Survey.find(params[:id])
    # survey = Survey.find(params[:id])
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      redirect_to @survey, notice: 'Survey was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy
    redirect_to surveys_url, notice: 'Survey was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.where(id: params[:id]).first
      redirect_to surveys_url unless @survey != nil && @survey.author_id == session[:author_id]
    end

    def set_take_survey
      @survey = Survey.where(id: params[:id]).first

      redirect_to surveys_url unless @survey != nil && @survey.author_id == session[:author_id]
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:title, :author_id, :description, :link ,questions_attributes: [:id, :order_number, :question_type, :text, :required, answers_attributes: [:id, :text, :taker_id]] )
    end



end
