require 'yaml'
yaml = YAML::load_file(ARGV[0])
volume_number = yaml['volume']
bound_volume = ARGV[1]
offset = yaml['offset']
start_pages = yaml['opinions']['start']
start_pdf_pages = start_pages.map {|x| x + offset}
end_pdf_pages = start_pdf_pages.map{|x| x - 1} 
end_pdf_pages.shift
end_pdf_pages << yaml['opinions']['last'] + offset
ranges = start_pdf_pages.zip(end_pdf_pages)
ranges.each do |range|
  citation_page = start_pages.shift
  new_pdf = "#{volume_number} U.S. #{citation_page}.pdf"
  `pdftk A='#{bound_volume}' cat A#{range[0]}-#{range[1]} output '#{new_pdf}'`
end
