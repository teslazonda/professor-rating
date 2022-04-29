class StudentStoriesController < ApplicationController
  #before_action :set_student_story, only: %i[create new]

  # GET /student_stories or /student_stories.json
  def index
    @professor = Professor.find(params[:professor_id])
    @student_stories = @professor.student_stories
  end

  # GET /student_stories/1 or /student_stories/1.json
  def show
  end

  # GET /student_stories/new
  def new
    @professor = Professor.find(params[:professor_id])
    @student_story = StudentStory.new
  end

  # GET /student_stories/1/edit
  def edit
  end

  # POST /student_stories or /student_stories.json
  def create
    @student_story = StudentStory.new(student_story_params)
    @professor = Professor.find(params[:professor_id])
    @student_story.professor = @professor

    if
    @student_story.save
    redirect_to professor_student_stories_path(@professor)
    else
    render :new
    end
  end

  # PATCH/PUT /student_stories/1 or /student_stories/1.json
  def update
    respond_to do |format|
      if @student_story.update(student_story_params)
        format.html { redirect_to student_story_url(@student_story), notice: "Student story was successfully updated." }
        format.json { render :show, status: :ok, location: @student_story }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_stories/1 or /student_stories/1.json
  def destroy
    @student_story.destroy

    respond_to do |format|
      format.html { redirect_to student_stories_url, notice: "Student story was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_story
      @student_story = StudentStory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_story_params
      params.require(:student_story).permit(:title, :text, :date)
    end
end
