# -*- encoding : utf-8 -*-
require 'cora'
require 'siri_objects'
require 'pp'

class SiriProxy::Plugin::iCrackSiri < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
  end
  listen_for /who is Jeffro/i do
    object = SiriAddViews.new
    object.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Here you go")
    answer = SiriAnswer.new("Jeffro Gomez (Jeff)", [
    SiriAnswerLine.new("He is 18 years old and has many websites and services that he offers. Such as Factory Unlocking - Supplying Twitter followers - Themes - and now working with App Development. "),
    SiriAnswerLine.new('logo', 'https://si0.twimg.com/profile_images/3030435989/d4177b59adfa978c1f99a32d1e29a4ae.jpeg')
    #ruby </3
    ])
    object.views << utterance
    object.views << SiriAnswerSnippet.new([answer])
    
    send_object object
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

  listen_for /siri proxy team/i do
    say "Team members are; JeffroGomez and me Siri :D We are here helping you and every other "
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end
listen_for /siri proxy information/i do
 $conf.active_connections = EM.connection_count 
    @activeconnections=$conf.active_connections
     @keysavailable4s=$keyDao.list4Skeys().count
    @keysavailableipad3=$keyDao.listiPad3keys().count
   object2 = SiriAddViews.new
    object2.make_root(last_ref_id)
    utterance2 = SiriAssistantUtteranceView.new("Here you go")
    answer2 = SiriAnswer.new("Proxy Info", [
    SiriAnswerLine.new("There are #{@keysavailable4s} 4S/5 keys available"),
    SiriAnswerLine.new("There are #{@keysavailableipad3} iPad 3 keys available"),#say something to the user! 
    SiriAnswerLine.new("IP: 50.115.163.228"),
    SiriAnswerLine.new("There are #{@activeconnections} active connections"),
    SiriAnswerLine.new("Support: support@icracksiri.com")
    #ruby </3
    ])
    object2.views << utterance2
    object2.views << SiriAnswerSnippet.new([answer2])
    
    send_object object2
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!    
end
end
