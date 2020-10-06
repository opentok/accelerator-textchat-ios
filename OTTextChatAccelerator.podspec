Pod::Spec.new do |s|
  s.name             = "OTTextChatAccelerator"

  s.version          = "2.0.0"
  s.summary          = "OpenTok Text Chat Accelerator Pack enables text messages between mobile or browser-based devices."

  s.description      = "This document describes how to use the OpenTok Text Chat Accelerator Pack for iOS. Through the exploration of the One to One Text Chat Sample Application, you will learn best practices for exchanging text messages on an iOS mobile device."

  s.homepage         = "https://vonage.com/"
  s.license          = 'MIT'
  s.author           = { "Vonage" => "devrel@vonage.com" }
  s.source           = { :git => "https://github.com/opentok/accelerator-textchat-ios.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/vonagedev'

  s.ios.deployment_target = '11.0'

  s.source_files = 'OTTextChatAccelerator/**/*'

  s.resource_bundles = {
    'OTTextChatAcceleratorBundle' => ['OTTextChatAcceleratorBundle/**/*.xib', 'OTTextChatAcceleratorBundle/Assets.xcassets']
  }

  s.static_framework = true
  s.dependency 'OTAcceleratorCore', '2.0.0'

  # s.subspec 'Core' do |s|
  #   s.source_files = 'OTTextChatAccelerator/Constant.h',
  #                       'OTTextChatAccelerator/OTTextChat.h',
  #                       'OTTextChatAccelerator/OTTextChat.m',
  #                       'OTTextChatAccelerator/OTTextMessage_Private.h',
  #                       'OTTextChatAccelerator/OTTextMessage.h',
  #                       'OTTextChatAccelerator/OTTextMessage.m'
  # end
end
