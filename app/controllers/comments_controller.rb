class CommentsController < ApplicationController
	
 
	def index
		@the_make = Make.find_by_id(params[:id])
	  @user_who_commented = @current_user #Check to see how to retrieve the devise current user
		@comment = Comment.build_from(@the_make, @user_who_commented.id, "Hey this is my comment!" )
	  # @comment.save
	  @all_comments = @the_make.comment_threads
  end 

	def new
		@comment = Comment.new
	end

	def create
    @comment = Comment.new(comment_params)
    YAML::dump(@comment);

    if @comment.save
      flash[:notice] = "Comment created."
      redirect_to comments_path
    else
      render 'new'
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

	def edit
    @comment = Comment.find(params[:id])
    
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment updated."
      redirect_to comment_path(@comment)
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment deleted."
    redirect_to comments_path
  end


  private
  	def comment_params
  		params.require(:comment).permit(:title, :body, :subject)
  	end
end