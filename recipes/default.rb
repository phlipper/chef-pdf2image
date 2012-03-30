#
# Cookbook Name:: pdf2image
# Recipe:: default
#
# Copyright 2012, Phil Cohen
#

pdf2image_version = node[:pdf2image][:version]
pdf2image_tmp_dir = File.join(Chef::Config[:file_cache_path], "pdf2image")

# ensure temp extraction dir exists
directory pdf2image_tmp_dir do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

# fetch remote source
remote_file "#{pdf2image_tmp_dir}/pdf2image-#{pdf2image_version}-source.tar.gz" do
  source "http://pdf2image.googlecode.com/files/pdf2image-#{pdf2image_version}-source.tar.gz"
  action :create_if_missing
end

bash "compile_pdf2image_source" do
  cwd pdf2image_tmp_dir
  code <<-EOH
    tar xzf pdf2image-#{pdf2image_version}-source.tar.gz
    ./configure
    make -j#{node[:cpu][:total]} && make install
  EOH
  creates "/usr/local/bin/pdf2image"
end
