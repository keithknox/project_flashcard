  class Subject < ActiveRecord::Base
    has_many :cards
    end

  class Card < ActiveRecord::Base
    belongs_to :subject
    validates  :question, :answer, :presence => true
    end
