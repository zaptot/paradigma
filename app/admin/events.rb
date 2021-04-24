ActiveAdmin.register Event do
  permit_params :child_id, :employee_id, :event, :date

  includes :child, :employee

  filter :child
  filter :employee
  filter :event, as: :select
end
