ActiveAdmin.register Schedule do
  permit_params :child_id, :employee_id, :days, :time, :form

  includes :child, :employee

  filter :child, collection: proc { Child.all.map { |child| [child.full_name, child.id] }.uniq.sort }
  filter :employee, collection: proc { Employee.all.map { |emp| [emp.full_name, emp.id] }.uniq.sort }
  filter :form, as: :select
  filter :days
end
