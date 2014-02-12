# put your solution to code challenge 02 here
class PrefixSuffix
  attr_reader :regex_hash

  def initialize
    @access = ARGV[0]
    @raw_customers = STDIN
    @regex_hash = Hash.new
  end

  create `histogram.txt`
  
  def sorter
    case @access
    when '-p'
      @raw_customers.each_line { |line| prefix_regex(line) } 
    when '-s'
      @raw_customers.each_line { |line| suffix_regex(line) }
    else
      puts "unknown option"
      puts "usage: analyze.rb -p | -s < input_file > output_file"
    end
  end 

  def prefix_regex(line)
    prefix = /(^\w+[\.]*)/.match(line).to_s
    
  end

  def suffix_regex(line)
    suffix = /(?!x)([a-z]+[\.]*)/.match(line)
    suffix.flatten!
  end
end