require 'tempfile'

describe File do
  context '.number_of_lines' do
    it 'is correct' do
      four_lines = %w[1 2 3 4].join("\n") + "\n")
      path = tempfile_containing(four_lines)

      File.number_of_lines(path).should == 4
    end
  end

  context '.dos2unix' do
    it 'converts \r\n to \n' do
      dos_format = %w[1 2 3 4].join("\r\n") + "\r\n"
      unix_format = %w[1 2 3 4].join("\n") + "\n"
      path = tempfile_containing(dos_format)

      File.dos2unix(path).should == unix_format
    end
  end

  context '.unix2dos' do
    it 'converts \n to \r\n' do
      dos_format = %w[1 2 3 4].join("\r\n") + "\r\n"
      unix_format = %w[1 2 3 4].join("\n") + "\n"
      path = tempfile_containing(unix_format)

      File.unix2dos(path).should == dos_format
    end
  end

  def tempfile_containing(content)
    Tempfile.new('whatever').tap do |tempfile|
      tempfile.write(content)
      tempfile.close
    end.path
  end
end
