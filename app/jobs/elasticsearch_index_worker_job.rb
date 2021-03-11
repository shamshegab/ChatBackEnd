class ElasticsearchIndexWorkerJob
  include ::Sidekiq::Worker
  sidekiq_options :queue => :indexer
  def perform(klass, id)
    obj = klass.constantize.find_by(id: id)
    action = "update"
    unless obj
      obj = klass.constantize.new(id: id)
      action = "remove"
    end
    update_index(obj, action)
  end
  def update_index(obj, action)
    if action.to_s == "remove"
      # obj.__elasticsearch__.delete_document rescue false
    else
      res = obj.__elasticsearch__.index_document
      raise Exception.new(res["error"]) if res["error"]
    end
  end
end