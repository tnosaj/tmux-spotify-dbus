#!/usr/bin/env ruby
require 'dbus'
bus = DBus::SessionBus.instance
service = bus.service("org.mpris.MediaPlayer2.spotify")
object = service.object("/org/mpris/MediaPlayer2")
property = object['org.freedesktop.DBus.Properties']
value = property.Get("org.mpris.MediaPlayer2.Player", "Metadata")[0]
puts "#{value['xesam:title']} - #{value['xesam:artist'][0]} (#{value['xesam:album']})"
