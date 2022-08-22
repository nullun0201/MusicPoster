class CommentsController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @comment = @content.comments.create(comment_params)
    if @comment.save
      flash[:success] = 'コメントを投稿しました'
      redirect_to content_path(@content)
    else
      flash[:danger] = 'コメント投稿に失敗しました'
      redirect_back(fallback_location: contents_path)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to contents_path(@content)
  end


private

def comment_params
  params.require(:comment).permit(:comment)
end

end
