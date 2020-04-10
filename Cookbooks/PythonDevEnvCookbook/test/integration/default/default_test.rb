# InSpec test for recipe PythonDevEnvCookbook::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe port(80) do
  it { should_not be_listening }
end

# describe pip 'atomicwrites' do
#   it {should be_installed}
#   its('version') {should cmp = '1.3.0'}
# end
#
# describe package 'attrs' do
#   it {should be_installed}
#   its('version') {should cmp = '19.3.0'}
# end
#
# describe package 'beautifulsoup4' do
#   it {should be_installed}
#   its('version') {should cmp = '4.8.0'}
# end
#
# describe package 'certifi' do
#   it {should be_installed}
#   its('version') {should cmp = '2019.6.16'}
# end
#
# describe package 'chardet' do
#   it {should be_installed}
#   its('version') {should cmp = '3.0.4'}
# end
#
# describe package 'idna' do
#   it {should be_installed}
#   its('version') {should cmp = '2.9'}
# end
#
# describe package 'importlib-metadata' do
#   it {should be_installed}
#   its('version') {should cmp = '1.6.0'}
# end
#
#
#
# describe package 'more-itertools' do
#   it {should be_installed}
#   its('version') {should cmp = '7.2.0'}
# end
# describe package 'packaging' do
#   it {should be_installed}
#   its('version') {should cmp = '19.1'}
# end
# describe package 'pluggy' do
#   it {should be_installed}
#   its('version') {should cmp = '0.12.0'}
# end
# describe package 'py' do
#   it {should be_installed}
#   its('version') {should cmp = '1.8.0'}
# end
# describe package 'pyparsing' do
#   it {should be_installed}
#   its('version') {should cmp = '2.4.2'}
# end
#
#
# describe package 'pytest' do
#   it {should be_installed}
#   its('version') {should cmp = '5.1.0'}
# end
# describe package 'requests' do
#   it {should be_installed}
#   its('version') {should cmp = '2.22.0'}
# end
# describe package 'six' do
#   it {should be_installed}
#   its('version') {should cmp = '1.12.0'}
# end
# describe package 'soupsieve' do
#   it {should be_installed}
#   its('version') {should cmp = '1.9.2'}
# end
# describe package 'urllib3' do
#   it {should be_installed}
#   its('version') {should cmp = '1.25.3'}
# end
# describe package 'wcwidth' do
#   it {should be_installed}
#   its('version') {should cmp = '0.1.7'}
# end
# describe package 'zipp' do
#   it {should be_installed}
#   its('version') {should cmp = '0.5.2'}
# end
# describe package 'bs4' do
#   it {should be_installed}
#   its('version') {should cmp = '4.9.0'}
# end

describe package('python3') do
  it { should be_installed }
  its("version"){ should cmp > '3.*'}
end

describe package('python3-pip') do
  it { should be_installed }
end
