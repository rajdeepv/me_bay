class AdsController < ApplicationController
  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ad }
    end
  end

  def index
    @ads = Ad.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ads }
    end
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:id])
    @ad.update_attributes(params[:ad])
    redirect_to "/ads/#{@ad.id}"
  end

  def create
    @ad = Ad.new(params[:ad])
    @ad.save
    redirect_to "/ads/#{@ad.id}"
    #respond_to do |format|
    #  if @ad.save
    #    format.html { redirect_to(@ad, :notice => 'Ad was successfully created.') }
    #    format.xml  { render :xml => @ad, :status => :created, :location => @ad }
    #  else
    #    format.html { render :action => "new" }
    #    format.xml  { render :xml => @ad.errors, :status => :unprocessable_entity }
    #  end
    #end
  end

end
