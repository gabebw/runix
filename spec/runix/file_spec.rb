require 'tempfile'

describe File do
  context '.number_of_lines' do
    it 'is correct' do
      path = tempfile(%w[1 2 3 4].join("\n") + "\n")

      File.number_of_lines(path).should == 4
    end
  end

  context '.dos2unix' do
    it 'converts \r\n to \n' do
      unix_format = %w[1 2 3 4].join("\n") + "\n"
      path = tempfile(%w[1 2 3 4].join("\r\n") + "\r\n")

      File.dos2unix(path).should == unix_format
    end
  end

  def tempfile(content)
    Tempfile.new('whatever').tap do |file|
      file.write(content)
      file.close
    end.path
  end
end
