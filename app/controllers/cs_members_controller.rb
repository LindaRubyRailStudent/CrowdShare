class CsMembersController < ApplicationController
  # GET /cs_members
  # GET /cs_members.json
  def index
    @cs_members = CsMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cs_members }
    end
  end

  # GET /cs_members/1
  # GET /cs_members/1.json
  def show
    @cs_member = CsMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cs_member }
    end
  end

  # GET /cs_members/new
  # GET /cs_members/new.json
  def new
    @cs_member = CsMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cs_member }
    end
  end

  # GET /cs_members/1/edit
  def edit
    @cs_member = CsMember.find(params[:id])
  end

  # POST /cs_members
  # POST /cs_members.json
  def create
    @cs_member = CsMember.new(params[:cs_member])

    respond_to do |format|
      if @cs_member.save
        format.html { redirect_to @cs_member, notice: 'Cs member was successfully created.' }
        format.json { render json: @cs_member, status: :created, location: @cs_member }
      else
        format.html { render action: "new" }
        format.json { render json: @cs_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cs_members/1
  # PUT /cs_members/1.json
  def update
    @cs_member = CsMember.find(params[:id])

    respond_to do |format|
      if @cs_member.update_attributes(params[:cs_member])
        format.html { redirect_to @cs_member, notice: 'Cs member was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cs_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cs_members/1
  # DELETE /cs_members/1.json
  def destroy
    @cs_member = CsMember.find(params[:id])
    @cs_member.destroy

    respond_to do |format|
      format.html { redirect_to cs_members_url }
      format.json { head :ok }
    end
  end
end
