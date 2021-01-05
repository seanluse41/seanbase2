class Project < ApplicationRecord
    validates :title, :body, :image, :link, presence: true
    after_create_commit { broadcast_prepend_to "projects" }
    after_update_commit { broadcast_replace_to "projects" }
    after_destroy_commit { broadcast_remove_to "projects" }
end
