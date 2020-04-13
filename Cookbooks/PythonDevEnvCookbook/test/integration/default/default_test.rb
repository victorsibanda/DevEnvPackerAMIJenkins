# InSpec test for recipe PythonDevEnvCookbook::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe port(80) do
  it { should_not be_listening }
end

describe file('/usr/local/lib/python3.6/dist-packages/atomicwrites')do
  it {should exist}
end
# describe file('/usr/local/lib/python3.6/dist-packages/attrs')do
#   it {should exist}
# end
# describe file('/usr/local/lib/python3.6/dist-packages/beautifulsoup4')do
#   it {should exist}
# end
describe file('/usr/local/lib/python3.6/dist-packages/certifi')do
  it {should exist}
end
# describe file('/usr/local/lib/python3.6/dist-packages/chardet')do
#   it {should exist}
# end
describe file('/usr/local/lib/python3.6/dist-packages/idna')do
  it {should exist}
end
# describe file('/usr/local/lib/python3.6/dist-packages/importlib-metadata')do
#   it {should exist}
# end
# describe file('/usr/local/lib/python3.6/dist-packages/more-itertools')do
#   it {should exist}
# end
describe file('/usr/local/lib/python3.6/dist-packages/packaging')do
  it {should exist}
end
describe file('/usr/local/lib/python3.6/dist-packages/pluggy')do
  it {should exist}
end
describe file('/usr/local/lib/python3.6/dist-packages/py')do
  it {should exist}
end
# describe file('/usr/local/lib/python3.6/dist-packages/pyparsing')do
#   it {should exist}
# end
# describe file('/usr/local/lib/python3.6/dist-packages/pytest')do
#   it {should exist}
# end
describe file('/usr/local/lib/python3.6/dist-packages/requests')do
  it {should exist}
end
# describe file('/usr/local/lib/python3.6/dist-packages/six')do
#   it {should exist}
# end
describe file('/usr/local/lib/python3.6/dist-packages/soupsieve')do
  it {should exist}
end
describe file('/usr/local/lib/python3.6/dist-packages/urllib3')do
  it {should exist}
end
describe file('/usr/local/lib/python3.6/dist-packages/wcwidth')do
  it {should exist}
end
# describe file('/usr/local/lib/python3.6/dist-packages/zipp')do
#   it {should exist}
# end

describe file('/usr/local/lib/python3.6/dist-packages/bs4')do
  it {should exist}
end
describe package('python3') do
  it { should be_installed }
  its("version"){ should cmp > '3.*'}
end

describe package('python3-pip') do
  it { should be_installed }
end
