ActiveAdmin.register User do
  menu false
  actions :show, :edit, :update
  permit_params :name, :email, :password, :password_confirmation

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password, label: 'New password'
      f.input :password_confirmation, label: 'New password confirmation'
      f.semantic_errors :user
      f.button :submit
    end
  end

  show do
    attributes_table do
      row :name
      row :email
      row :admin
    end
  end

  controller do
    def update
      remove_password_params_if_blank
      current_id = current_user.id
      @admin_user = User.find(params[:id])
      if @admin_user.update(permitted_params[:user])
        bypass_sign_in User.find(current_id) if @admin_user.id == current_id
        flash_notice_messages
        redirect_to "/admin/users/#{current_id}"
      else
        super
      end
    end

    private

    def remove_password_params_if_blank
      return unless params[:user][:password].blank? && params[:user][:password_confirmation].blank?

      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    def flash_notice_messages
      flash[:notice] = if permitted_params.dig :user, :password
                         "Your password has been changed successfully."
                       else
                         "Your account has been changed successfully."
                       end
    end
  end
end
