Pod::Spec.new do |s|
  s.name             = "OTTextChatKit"
  s.version          = "3.0.0"
  s.summary          = "OpenTok Text Chat Accelerator Pack enables text messages between mobile or browser-based devices."

  s.description      = "This document describes how to use the OpenTok Text Chat Accelerator Pack for iOS. Through the exploration of the One to One Text Chat Sample Application, you will learn best practices for exchanging text messages on an iOS mobile device."

  s.homepage         = "https://tokbox.com/"
  s.license          = 'MIT'
  s.author           = { "Lucas Huang" => "lucas@tokbox.com" }
  s.source           = { :git => "https://github.com/opentok/accelerator-textchat-ios", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tokbox/'

  s.ios.deployment_target = '8.0'

  s.source_files = 'OTTextChatKit/**/*'
  
  s.resource_bundles = {
    'OTTextChatKitBundle' => ['OTTextChatKitBundle/**/*']
  }

  s.dependency 'OTAcceleratorCore', '1.0.1'
end
