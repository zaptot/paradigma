ActiveAdmin.register Event do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :childrens_id, :employees_id, :event, :date
  #
  # or
  #
  # permit_params do
  #   permitted = [:childrens_id, :employees_id, :event, :date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :child
  filter :employee
  filter :event, as: :select
end
