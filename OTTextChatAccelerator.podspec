Pod::Spec.new do |s|
  s.name             = "OTTextChatAccelerator"
  s.version          = "1.0.2"
  s.summary          = "OpenTok Text Chat Accelerator Pack enables text messages between mobile or browser-based devices."

  s.description      = "This document describes how to use the OpenTok Text Chat Accelerator Pack for iOS. Through the exploration of the One to One Text Chat Sample Application, you will learn best practices for exchanging text messages on an iOS mobile device."

  s.homepage         = "https://tokbox.com/"
  s.license          = 'MIT'
  s.author           = { "Lucas Huang" => "lucas@tokbox.com" }
  s.source           = { :git => "https://github.com/opentok/accelerator-textchat-ios", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tokbox/'

  s.ios.deployment_target = '9.0'

  s.source_files = 'OTTextChatAccelerator/**/*'

  s.resource_bundles = {
    'OTTextChatAcceleratorBundle' => ['OTTextChatAcceleratorBundle/**/*']
  }

  s.dependency 'OTAcceleratorCore'

  s.subspec 'Core' do |s|
    s.source_files = 'OTTextChatAccelerator/Constant.h',
                        'OTTextChat.h',
                        'OTTextChat.m'
  end
end
