ActiveAdmin.register Sproduct do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :image, :alignment
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :image, :alignment]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :title, :description, :image, :alignment

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :image
    column :alignment
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :title
  filter :description
  filter :image
  filter :alignment
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :ckeditor
      f.input :image, as: :file 
      f.input :alignment, as: :select, collection: (['Left','Right']),selected: 'Left'
    end
    f.actions
  end 
end
