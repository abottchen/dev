require 'puppet'
# If necessary, require any other Ruby libraries for this report here.

Puppet::Reports.register_report(:myreport) do
  desc "Process reports via the fictional my_cool_cmdb API."

  # Next, define and configure the report processor.
  def process
    Puppet.notice "METRICS: Process Puppet Report" 
    Puppet.notice "METRICS: self.logs.last.message: #{self.logs.last.message}" 
    puts "METRICS:"
    self.metrics['time'].values.each { |val| 
      puts val.to_s
    } 
  end
end
