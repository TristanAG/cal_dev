class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # GET /meetings
  # GET /meetings.json
  def index
    @meetings = Meeting.all
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
  end

  # GET /meetings/new
  def new

    #is this what essentially conjures up the form?
    #that make sense that this is the GET and the create method is the POST
    #the get brings up the page, and post actually saves it to the db
      #the difference is with create is that it is actually calling @meeting.save
      #that's why there needs to be a new method that gets called when you push the button to create the meeting


      #def multiple_occurances
        #if !has_multiple_occurances
          #call create method
        #else
          #execute algorithm to produce multiple db adds
      #end

    #when all is said and done, you will instead have a database that has many more
    #individual entries than just the one 'event' that you added.
    #if you wanted to then alter the time of a particular occurance, or alter some part of the description
    #you would locate it on the calendar (or list) view, find the event, and edit it





    @meeting = Meeting.new
  end

  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings
  # POST /meetings.json
  def create

    #it would seem that if you DON'T set a start_time
    #you will fuck up everything and destroy the universe
    #just go into the console and delete it if you do :)

    #working proof of concept!!
      #just need to craft an algorithm to set all the stuff correctly

    @meeting = Meeting.new(meeting_params)

    

    @meeting1 = Meeting.new({name: @meeting.name, start_time: @meeting.start_time})
    @meeting1.save

    @meeting2 = Meeting.new({name: @meeting.name, start_time: @meeting.start_time_2})
    @meeting2.save

    # respond_to do |format|
    #   if @meeting1.save
    #     format.html { redirect_to @meeting1, notice: 'Meeting was successfully created.' }
    #     format.json { render :show, status: :created, location: @meeting1 }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @meeting1.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /meetings/1
  # PATCH/PUT /meetings/1.json
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:name, :start_time, :start_time_2)
    end
end
