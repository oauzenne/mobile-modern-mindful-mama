class Milking < ApplicationRecord
    belongs_to :mother#, optional: true
end
