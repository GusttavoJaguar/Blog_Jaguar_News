class ComentariosController < ApplicationController
  before_action :set_post

  def new
    @comentario = @post.comentarios.build
  end

  def create
    @comentario = @post.comentarios.build(comentario_params)
    if @comentario.save
      redirect_to post_path(@post), notice: "Comentário adicionado com sucesso."
    else
      render :new
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comentario_params
    params.require(:comentario).permit(:texto_comentario)
  end
end
