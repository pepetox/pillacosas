# encoding: UTF-8
class Dataset < ActiveRecord::Base

  def to_csv(options = {})
    arana(self)
  end

end


def arana (miDataset)
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'



  #Si hay html araño el html sino mira la url
  
  html_doc = Nokogiri::HTML(miDataset.html) 
  html_doc = Nokogiri::HTML(open(miDataset.mi_url)) unless miDataset.mi_url.blank?
  
  csv_string = CSV.generate do |csv|
    csv << ["Campo1", "Campo2", "Campo3", "Campo4","Campo5", "Campo6"]
    html_doc.css(miDataset.bloque).each do |item|
      campo1 =  item.css(miDataset.campo1).text  unless miDataset.campo1.blank?
      campo2 =  item.css(miDataset.campo2).text unless miDataset.campo2.blank?
      campo3 =  item.css(miDataset.campo3).text unless miDataset.campo3.blank?
      campo4 =  item.css(miDataset.campo4).text unless miDataset.campo4.blank?
      campo5 =  item.css(miDataset.campo5).text unless miDataset.campo5.blank?
      campo6 =  item.css(miDataset.campo6).text unless miDataset.campo6.blank?
      csv << [campo1, campo2, campo3, campo4,campo5, campo6]
    end
    csv
  end
end


