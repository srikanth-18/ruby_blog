ActiveAdmin.register Challenge do

menu :label => "Blog Challenges"


index do
selectable_column
    id_column
    column :title
    column "Author", :admin_user
    column :subdomain
    column :created_at
    actions

end

permit_params :title, :body, :input_format, :output_format, :constraints, :subdomain_id, :admin_user_id

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
