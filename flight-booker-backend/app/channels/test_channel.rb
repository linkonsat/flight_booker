# frozen_string_literal: true

class TestChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'test'
  end

  def receive(data)
    Rails.logger.debug data['message']
    ActionCable.server.broadcast('test', 'ActionCable is connected')
  end
end
