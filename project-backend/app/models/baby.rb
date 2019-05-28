class Baby < ApplicationRecord
    belongs_to :mother





    def self.all_names
        return Baby.all.map{ |b| b.name }.uniq
    end
end
