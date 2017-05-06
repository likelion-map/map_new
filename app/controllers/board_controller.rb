class BoardController < ApplicationController
  def index
  end

  def new
  end
  
  def save
    
    @dateResult = params[:inputDate]
    @timeResult = params[:inputTime]
    @placeResult = params[:inputPlace]
    @peopleResult = params[:inputPeople]
    @textResult = params[:inputText]
    @categoryResult = params[:inputCategory]
    @building_nameResult = params[:inputBuilding]
    
    u = Post.new
    
    u.bookdate = @dateResult
    u.booktime = @timeResult
    u.bookplace = @placeResult
    u.bookpeople = @peopleResult
    u.booktext = @textResult
    u.category = @categoryResult
    u.building_name = @building_nameResult
    
    u.save
    
    redirect_to '/detail'
    
  end

  def simple
  end

  def detail
    @bookdata = Post.all
  end
  
  def update_edit
    
    @data_show = Post.find(params[:board_id])
    
  
  def update
    
    @dateUpdResult          = params[:inputDate_upd]
    @timeUpdResult          = params[:inputTime_upd]
    @placeUpdResult         = params[:inputPlace_upd]
    @peopleUpdResult        = params[:inputPeople_upd]
    @textUpdResult          = params[:inputText_upd]
    @categoryUpdResult         = params[:inputCategory_upd]
    @building_nameUpdResult    = params[:inputBuilding_name_upd]
    
    data_update = Post.find(params[:board_id])
    data_update.bookdate    = @dateUpdResult
    data_update.booktime    = @timeUpdResult
    data_update.bookplace   = @placeUpdResult
    data_update.bookpeople  = @peopleUpdResult
    data_update.booktext    = @textUpdResult
    data_update.category    = @categoryUpdResult
    data_update.building_name = @building_nameUpdResult
    data_update.save
    
    redirect_to '/detail'
    
  end
  
  def delete
    
    del = Post.find(params[:board_id])
    del.destroy
    
    redirect_to '/detail'
  end
end
end