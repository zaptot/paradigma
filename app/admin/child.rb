ActiveAdmin.register Child do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :surname, :form, :address, :date_of_birth
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :surname, :form, :address, :date_of_birth]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :name, as: :select
  filter :surname, as: :select
  filter :form, as: :select
  filter :address
  filter :date_of_birth
end
