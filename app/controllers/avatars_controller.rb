class AvatarsController < ApplicationController
  before_action :set_avatar, only: [:show, :edit, :update, :destroy]

  def index
    @avatars = Avatar.all
  end

  def show
  end

  def new
    @avatar = Avatar.new
  end

  def edit
<<<<<<< HEAD
    # @avatar.update(avatar_params)
    # redirect_back(fallback_location: root_path)
=======
>>>>>>> 9d4c53d014522f057df9410ed1e2d6ecd6b50672
  end


  def create
    @avatar = Avatar.new(avatar_params)
    @avatar.save
    redirect_back(fallback_location: root_path)

  end

  def update
<<<<<<< HEAD
    # respond_to do |format|
      # if
        @avatar.update(avatar_params)
        redirect_to profile_path(current_user.id)

        #format.html { redirect_to @avatar, notice: 'Avatar was successfully updated.' }
        #format.json { render :show, status: :ok, location: @avatar }
      #else
        #format.html { render :edit }
        #format.json { render json: @avatar.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # DELETE /avatars/1
  # DELETE /avatars/1.json
  def destroy
    @avatar.destroy
    respond_to do |format|
      format.html { redirect_to avatars_url, notice: 'Avatar was successfully destroyed.' }
      format.json { head :no_content }
    end
=======
    @avatar.update(avatar_params)
    redirect_back(fallback_location: root_path)
>>>>>>> 9d4c53d014522f057df9410ed1e2d6ecd6b50672
  end

  private
    def set_avatar
      @avatar = Avatar.find(params[:id])
    end

    def avatar_params
      params.require(:avatar).permit(:username, :image, :remove_image)
    end
end
