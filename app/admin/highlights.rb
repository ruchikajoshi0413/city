ActiveAdmin.register Highlight do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :heading, :body, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:heading, :body, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :image, :heading, :body

  index do
    selectable_column
    id_column
    column :image
    column :heading
    column :body
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :image
  filter :heading
  filter :body
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :image, as: :file
      f.input :heading
      f.input :body
    end
    f.actions
  end
end
