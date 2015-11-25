#!/usr/bin/env ruby

def link_for_version(version)
  "https://fabric.io/talkto-fzc/ios/apps/to.talk.goto/issues?build=" + version + "&state=open&event_type=all&time=all"
end

def open_link(link)
  puts "Opening link: #{link}"
  `open #{link}`  
end

def open_crashes_list_for_version(version)
  link = link_for_version version
  open_link link
end

def main
  "Error: Missing version number" unless ARGV[0]
  open_crashes_list_for_version ARGV[0] if ARGV[0]
end

main if __FILE__ == $0
