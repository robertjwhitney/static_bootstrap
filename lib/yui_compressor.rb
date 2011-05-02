YUI_JAR = File.dirname(__FILE__) + "/../tools/yuicompressor-2.4.6.jar"

class YuiCompressor < Nanoc3::Filter
  identifier :yui_compress
  type :text => :binary
  def run(content, params={})
    type = type_from_extension
    cmd = "java -jar #{YUI_JAR} --type #{type} -o #{output_filename}"
    IO.popen(cmd, 'w') { |f| f.write(content) }
    raise "yuicompressor exited with #{$?} for '#{cmd}'" unless $? == 0
  end

  def type_from_extension
    case @item[:extension]
    # when /^css/
    #   "css"
    when /^js/
      "js"
    else
      raise "unknown type for yuicompressor '#{@item[:extension]}'"
    end
  end
end
