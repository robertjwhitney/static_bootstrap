include Nanoc3::Helpers::Rendering
include NanocFuel::Helpers::Google

def root_url
  "//#{@site.config[:host]}#{@site.config[:path]}#{@site.config[:project]}"
end

def root_path
  "#{@site.config[:path]}#{@site.config[:project]}"
end