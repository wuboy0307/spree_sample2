module Spree
  User.class_eval do
    # new hook
    before_save :say_my_name

    # new method
    def say_my_name
      # say my name!!!
      puts("my name is #{self.login}")
    end

    # override method
    def self.admin_created?
      # origin -- User.admin.count > 0
      # however I don't care admin create or not, so always return 0
      0
    end
  end
end