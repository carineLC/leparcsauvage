ActiveAdmin.register Blogpost do
  actions :index, :show, :new, :create, :edit, :update, :destroy

  permit_params :title, :description, :photo, :user_id
end
