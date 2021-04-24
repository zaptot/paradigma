ActiveAdmin.register ChildrenDisorder do
  permit_params :child_id, :disorder_id, :date

  includes :child, :disorder
end
