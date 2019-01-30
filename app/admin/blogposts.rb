ActiveAdmin.register Blogpost do
  permit_params :title, :description, :photo, :user_id

  filter :title
  filter :description

  form do |f|
    tabs do
      tab 'Blogpost' do
        f.inputs do
          f.input :title
          f.input :description, as: :ckeditor
          f.input :photo, as: :file, hint: cl_image_tag(f.object.photo.url), label: 'Import a photo'
          f.input :photo_cache, as: :hidden
          f.input :user_id, as: :hidden, input_html: { value: current_user.id }
          f.semantic_errors
          f.button :submit
        end
      end
    end
  end

  index do
    div "Total: #{pluralize(collection.count, 'blogpost')}", class: "index_total"
    column :title
    column :description do |blogpost|
      raw(blogpost.description.truncate(120))
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :description do |blogpost|
        raw(blogpost.description)
      end
      row :photo do |blogpost|
        image_tag blogpost.photo.url
      end
    end
  end
end
