class File
  def self.number_of_lines(path)
    `wc -l '#{path}' |
      awk '{print $1}' |
      xargs echo -n`.to_i
  end

  def self.dos2unix(path)
    `tr -d "\15\32" < '#{path}'`
  end
end
