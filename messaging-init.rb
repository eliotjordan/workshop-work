module Messaging

  def geoblacklight_client
    rabbit_client
  end

  def geoserver_client
    local_client
  end

  private

    def local_client
      GeoConcerns::LocalMessagingClient.new
    end

    def rabbit_client
      GeoConcerns::RabbitMessagingClient.new(Messaging.config['events']['server'])
    end

    ...
end
