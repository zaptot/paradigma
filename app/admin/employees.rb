ActiveAdmin.register Employee do
  permit_params :name, :surname, :fathername

  filter :name, as: :select
  filter :surname, as: :select
  filter :fathername, as: :select
end
