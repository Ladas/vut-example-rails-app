class Service < ActiveRecord::Base

    def fields
        [:company,:contact,:phone,:email]
    end

    def self.filter_by_comp(par)
        where("company LIKE ?", par)
    end
end
