ActiveAdmin.register Vote do
  index do
    column :id
    column :count
    column :user do |user|
      link_to user.user.email, admin_user_path(user.user.id)
    end
  end
end
