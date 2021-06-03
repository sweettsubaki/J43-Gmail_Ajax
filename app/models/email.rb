class Email < ApplicationRecord
    def self.create_fake
      Email.create(
        object: Faker::TvShows::Suits.quote,
        body: Faker::Movies::PrincessBride.quote,
        read: false
      )
    end
  
    def read_status
      read ? 'read' : 'unread'
    end
  end