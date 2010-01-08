cur_dir = File.dirname(__FILE__)

task :default => :spec

task :spec do
  spec_dir = File.join(cur_dir, 'spec')
  sh "spec #{spec_dir}/*_spec.rb"
end
