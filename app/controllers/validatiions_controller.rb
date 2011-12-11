class ValidatiionsController < ApplicationController
  # GET /validatiions
  # GET /validatiions.json
  def index
    @validatiions = Validatiion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @validatiions }
    end
  end

  # GET /validatiions/1
  # GET /validatiions/1.json
  def show
    @validatiion = Validatiion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @validatiion }
    end
  end

  # GET /validatiions/new
  # GET /validatiions/new.json
  def new
    @validatiion = Validatiion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @validatiion }
    end
  end

  # GET /validatiions/1/edit
  def edit
    @validatiion = Validatiion.find(params[:id])
  end

  # POST /validatiions
  # POST /validatiions.json
  def create
    @validatiion = Validatiion.new(params[:validatiion])

    respond_to do |format|
      if @validatiion.save
        format.html { redirect_to @validatiion, :notice => 'Validatiion was successfully created.' }
        format.json { render :json => @validatiion, :status => :created, :location => @validatiion }
      else
        format.html { render :action => "new" }
        format.json { render :json => @validatiion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /validatiions/1
  # PUT /validatiions/1.json
  def update
    @validatiion = Validatiion.find(params[:id])

    respond_to do |format|
      if @validatiion.update_attributes(params[:validatiion])
        format.html { redirect_to @validatiion, :notice => 'Validatiion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @validatiion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /validatiions/1
  # DELETE /validatiions/1.json
  def destroy
    @validatiion = Validatiion.find(params[:id])
    @validatiion.destroy

    respond_to do |format|
      format.html { redirect_to validatiions_url }
      format.json { head :ok }
    end
  end
end
