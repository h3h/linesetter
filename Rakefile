cur_dir = File.dirname(__FILE__)

task :default => :spec

task :install do
  prefix = ENV['PREFIX'] || '/usr/bin'
  bin = File.join(cur_dir, 'bin', 'paragraphs')
  dest = File.join(prefix, 'paragraphs')

  sh "ln -s #{bin} #{dest}"
  puts "Installed #{dest}"
end

task :spec do
  spec_dir = File.join(cur_dir, 'spec')
  sh "spec #{spec_dir}/*_spec.rb"
end
