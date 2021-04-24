ActiveAdmin.register Schedule do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :childrens_id, :employees_id, :days, :time, :form
  #
  # or
  #
  # permit_params do
  #   permitted = [:childrens_id, :employees_id, :days, :time, :form]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :child, collection: Child.all.map { |child| [child.full_name, child.id] }.uniq.sort
  filter :employee, collection: Employee.all.map { |emp| [emp.full_name, emp.id] }.uniq.sort
  filter :form, as: :select
  filter :days
end
