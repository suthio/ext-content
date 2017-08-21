# coding: utf-8
require "open-uri"
require "bundler/setup"
require "extractcontent"
require 'kconv'
require 'nokogiri'



# 行けるサイト
# URL = "https://jisin.jp/serial/%E3%82%A8%E3%83%B3%E3%82%BF%E3%83%A1/%E3%82%A8%E3%83%B3%E3%82%BF%E3%83%A1/27066?rf=2&rf=3"
# URL = "http://blog.esuteru.com/archives/20017815.html"
URL = "http://nlab.itmedia.co.jp/nl/articles/1708/21/news106.html"

# 全然足らないサイト
# URL = "http://syogainenkin119.com/kijun.html"
open(URL) do |io|
  html = io.read
  body, title = ExtractContent.analyse(html.toutf8)
  # doc = Nokogiri::HTML.parse(html, nil)
  # title= doc.xpath('//title')
  # body = doc.xpath('//*[contains(@id,"main")]//text()')
  puts title
  puts body
end

