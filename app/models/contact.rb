class Contact < ActiveRecord::Base
	self.table_name = "salesforce.contact"
	searchable do
    text    :firstname
    text		:lastname
  end
end
