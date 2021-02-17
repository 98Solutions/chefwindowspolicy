# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'chefwindowspolicy'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'winstacks::default'

# Specify a custom source for a single cookbook:
cookbook 'winstacks', path: './winstacks'

# Define different named_run_list
named_run_list :base, 'winstacks::attrs-base', 'winstacks::base'
