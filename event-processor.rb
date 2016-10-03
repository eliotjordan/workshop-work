class GeoblacklightEventProcessor
    
    ...
    def processor
      case event_type
      when 'CREATED'
        UpdateProcessor.new(event)
      when 'UPDATED'
        UpdateProcessor.new(event)
      when 'DELETED'
        DeleteProcessor.new(event)
      else
        UnknownEvent.new(event)
      end
    end
end
