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
    actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
