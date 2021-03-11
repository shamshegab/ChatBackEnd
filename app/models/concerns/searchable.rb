
# models/concerns/searchable.rb
module Searchable
    extend ActiveSupport::Concern
    included do
    after_commit :index_document
    after_touch :index_document
    before_destroy :index_document
    end
    private
    def index_document
        ElasticsearchIndexWorkerJob.perform_async(self.class.to_s, self.id)
    end
end