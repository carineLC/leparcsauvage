ActiveAdmin.register Worker do
  permit_params :name, :description, :position, :photo


  form do |f|
    tabs do
      tab "MEMBRE DE L'EQUIPE" do
        f.inputs do
          f.input :name
          f.input :position
          f.input :description
          f.input :photo, as: :file, label: 'Import a photo'
          f.semantic_errors
          f.button :submit
        end
      end
    end
  end

  index do
    column :name
    column :position
    column :description
    column(:photo) { |w| image_tag(w.photo.url) }
    actions
  end

  show do
    attributes_table do
      row :name
      row :position
      row :description
      row(:photo) { |w| image_tag(w.photo.url) }
    end
  end
end
