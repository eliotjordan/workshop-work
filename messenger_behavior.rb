module GeoConcerns
  module MessengerBehavior
    extend ActiveSupport::Concern

    def destroy
      messenger.record_deleted(geo_concern)
      super
    end

    def after_create_response
      super
      messenger.record_created(geo_concern)
    end

    def after_update_response
      super
      messenger.record_updated(geo_concern)
    end

    ..
  end
end
