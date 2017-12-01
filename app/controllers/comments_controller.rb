class CommentsController < ApplicationController
  def new
  end

  def edit
  end

  def show
  end
  
  def create
    @comment = Comment.new(comment_params)
     respond_to do |format|
      if @comment.save
        format.html { redirect_to :back, notice: 'Tottle was successfully created.' }
      else
        format.html { render :new }
      end
    end
    
  end

  def destroy
  end
  
  private
    def comment_params
      params.require(:comment).permit(:text, :commentable_id, :commentable_type)
    end
end
