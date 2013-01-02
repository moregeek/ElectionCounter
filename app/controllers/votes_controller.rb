class VotesController < ApplicationController

  before_filter :authenticate_user!

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.find(:all, :conditions => { user_id: current_user } )

    respond_to do |format|
      format.html # index.html.erb
    end
  end

#  def show
#  end

  # GET /votes/new
  # GET /votes/new.json
  def new
    @vote = Vote.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /votes/1/edit
  def edit
    @vote = Vote.find(params[:id])
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = Vote.new(params[:vote])
    @vote.user_id = current_user.id

    respond_to do |format|
      if @vote.save
        format.html { flash[:notice] = 'Unterstuetzungserklaerung(en) erfolgreich eingetragen!' and redirect_to action: "index" }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /votes/1
  # PUT /votes/1.json
  def update
    @vote = Vote.find(params[:id])

    respond_to do |format|
      if @vote.update_attributes(params[:vote])
        format.html { redirect_to @vote, notice: 'Vote was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy

    respond_to do |format|
      format.html { redirect_to votes_url }
    end
  end
end
