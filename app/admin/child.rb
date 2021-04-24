ActiveAdmin.register Child do
  permit_params :name, :surname, :form, :address, :date_of_birth

  filter :name, as: :select
  filter :surname, as: :select
  filter :form, as: :select
  filter :address
  filter :date_of_birth
end
