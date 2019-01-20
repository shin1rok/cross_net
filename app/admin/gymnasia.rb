ActiveAdmin.register Gymnasium do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :name, :zip_code, :prefecture_id, :city, :street, :tell, :url, :access, :court, :note

  index do
    selectable_column
    id_column
    column :name
    column :zip_code
    column :prefecture_id
    column :city
    column :street
    column :tell
    column :url
    column :access
    column :court
    column :note
    column '利用時間' do |gymnasium|
      gymnasium.programs.count
    end
    column :created_at
    column :updated_at
    actions
  end

  show do |gymnasium|
    attributes_table(*gymnasium.class.columns.collect { |column| column.name.to_sym })
    panel "利用時間一覧" do
      table_for gymnasium.programs do
        column :gymnasium_id
        column :day
        column :start_time
        column :end_time
        column :note
      end
    end
    active_admin_comments
  end
end
