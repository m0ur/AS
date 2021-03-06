class Event < ActiveRecord::Base
	include ActiveModel::Validations

	has_many :line_items

	validates :category, :module, :date, :supervisor, :time, :duration, presence: true
	validates :module, allow_blank: true, format: {
  with: %r{\A[a-zA-Z]{2}[1-4][0-9]{2}\z},
  message: 'must be a valid module code.'  }


	#validates :category, allow_blank: true, format: {
#  with: %r{\A(lecture)|(tutorial)|(lab)\z}i,
#  message: 'category must be in {lecture, lab, tutorial}.'  }
	
end


