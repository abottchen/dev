Facter.add('vardir') do
  setcode do
    Facter::Core::Execution.exec('puppet config print vardir')
  end
end
