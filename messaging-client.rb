module GeoConcerns
  class RabbitMessagingClient
    
    def publish(message)
      exchange_type = JSON.parse(message)['exchange']
      send(exchange_type)
      @exchange.publish(message, persistent: true)
    end

    def geoblacklight
      exchange_name = Messaging.config['events']['exchange']['geoblacklight']
      @exchange ||= channel.fanout(exchange_name, durable: true)
    end
    
    ...
  end
end
