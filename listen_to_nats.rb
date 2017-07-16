#!/usr/bin/env ruby

require "nats/client"

# You need to have the port 4222 open to be able to connect to the BOSH NATS server.

nats_protocol = "nats"
nats_user = "nats"
nats_password = "nats-password"
nats_ip = "13.124.8.111"
nats_port = "4222"

NATS.start(uri: "#{nats_protocol}://#{nats_user}:#{nats_password}@#{nats_ip}:#{nats_port}") do
  NATS.subscribe('>') { |msg, reply, sub| puts "Msg received on [#{sub}] : '#{msg}'" }
end
