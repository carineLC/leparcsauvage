ActiveAdmin.register Blogpost do
  actions :index, :show, :new, :create, :edit, :update, :destroy
  permit_params :title, :description, :photo, :user_id
end
# f.input :content, as: :ckeditor
# f.input :photo, as: :file, hint: cl_image_tag(f.object.photo.url), lable: "er"
