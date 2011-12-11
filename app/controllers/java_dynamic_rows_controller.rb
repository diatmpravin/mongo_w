class JavaDynamicRowsController < ApplicationController
  # GET /java_dynamic_rows
  # GET /java_dynamic_rows.json
  def index
    @java_dynamic_rows = JavaDynamicRow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @java_dynamic_rows }
    end
  end

  # GET /java_dynamic_rows/1
  # GET /java_dynamic_rows/1.json
  def show
    @java_dynamic_row = JavaDynamicRow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @java_dynamic_row }
    end
  end

  # GET /java_dynamic_rows/new
  # GET /java_dynamic_rows/new.json
  def new
    @java_dynamic_row = JavaDynamicRow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @java_dynamic_row }
    end
  end

  # GET /java_dynamic_rows/1/edit
  def edit
    @java_dynamic_row = JavaDynamicRow.find(params[:id])
  end

  # POST /java_dynamic_rows
  # POST /java_dynamic_rows.json
  def create
    @java_dynamic_row = JavaDynamicRow.new(params[:java_dynamic_row])

    respond_to do |format|
      if @java_dynamic_row.save
        format.html { redirect_to @java_dynamic_row, :notice => 'Java dynamic row was successfully created.' }
        format.json { render :json => @java_dynamic_row, :status => :created, :location => @java_dynamic_row }
      else
        format.html { render :action => "new" }
        format.json { render :json => @java_dynamic_row.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /java_dynamic_rows/1
  # PUT /java_dynamic_rows/1.json
  def update
    @java_dynamic_row = JavaDynamicRow.find(params[:id])

    respond_to do |format|
      if @java_dynamic_row.update_attributes(params[:java_dynamic_row])
        format.html { redirect_to @java_dynamic_row, :notice => 'Java dynamic row was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @java_dynamic_row.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /java_dynamic_rows/1
  # DELETE /java_dynamic_rows/1.json
  def destroy
    @java_dynamic_row = JavaDynamicRow.find(params[:id])
    @java_dynamic_row.destroy

    respond_to do |format|
      format.html { redirect_to java_dynamic_rows_url }
      format.json { head :ok }
    end
  end
end
