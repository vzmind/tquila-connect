class AddQualificationToContact < ActiveRecord::Migration
  def change
  	add_column 'salesforce.contact', :qualification, :string
  end
end
