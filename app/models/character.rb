class Character < ActiveRecord::Base

  belongs_to :owner, :polymorphic => :true
  has_one :char_sheet
  has_many :items
  def get_characteristic name
    return nil if char_sheet.nil?
    char_sheet.get_characteristic name
  end
  alias :get_c :get_characteristic

end
