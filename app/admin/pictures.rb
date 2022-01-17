ActiveAdmin.register Picture do
    permit_params :location, :description, :photo
  
    form do |f|
      tabs do
        tab "PHOTOS" do
          f.inputs do
            f.input :location, as: :select, collection: Picture::LOCATIONS
            f.input :description
            f.input :photo, as: :file, label: 'Import a photo'
            f.semantic_errors
            f.button :submit
          end
        end
      end
    end
  
    index do
      column :location
      column :description
      column(:photo) { |w| image_tag(w.photo.url) if w.photo.present? }
      actions
    end
  
    show do
      attributes_table do
        row :location
        row :description
        row(:photo) { |w| image_tag(w.photo.url) if w.photo.present? }
      end
    end
  end
  