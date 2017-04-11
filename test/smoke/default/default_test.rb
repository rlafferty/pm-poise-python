# # encoding: utf-8

# Inspec test for recipe pm-poise-python::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe command("/opt/app/bin/python -V") do
  its(:exit_status) { is_expected.to eq 0 }
  its(:stdout) { is_expected.to include 'Python 3.' }
end
