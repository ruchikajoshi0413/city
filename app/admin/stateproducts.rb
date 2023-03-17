ActiveAdmin.register Stateproduct do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :entries, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:entries, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :image, :entries

  index do
    selectable_column
    id_column
    column :image
    column :entries
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :image
  filter :entries
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :image, as: :file
      f.input :entries
    end
    f.actions
  end 
end
