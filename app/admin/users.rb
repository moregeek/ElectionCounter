ActiveAdmin.register User do
  scope :not_approved

  index do
    column :id
    column :email
    column :last_sign_in_at
    column :approved
    default_actions
  end
end
