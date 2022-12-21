class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # character_name = self.characters.map {|c| c.name}
    # show_name = self.shows.map {|s| s.name}
    # "#{character_name} - #{show_name}"

    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end