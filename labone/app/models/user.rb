class User < ApplicationRecord
    validates :name, :last_name, presence: true
    validates :name, uniqueness: {scope: [:last_name]}
    enum gender: {female:1,male:2,any:3}

    before_save :update_full_name
    has_many :books

    private 
      def update_full_name

        self.full_name=self.name+" "+self.last_name

      end


    
end
