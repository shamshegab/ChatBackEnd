class ApplicationSerializer
    include JSONAPI::Serializer
    set_id {""}
    attribute :name, :created_at, :updated_at, :token
  
    attribute :chats_count do |app|
      app.get_chats_count
    end
  end