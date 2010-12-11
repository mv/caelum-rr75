module ApplicationHelper

  def time_now
    uri = 'http://developer.yahooapis.com/TimeService/V1/getTime'
    resposta   = Restfulie.at(uri).get(:appid => 'YahooDemo')
    yahoo_time = resposta['Result']['Timestamp'].to_i
    Time.at(yahoo_time).strftime("%Y-%m-%d %H:%S")
  end

end
