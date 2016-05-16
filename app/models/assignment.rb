class Assignment < ApplicationRecord
  belong_to :user, required: true
end
