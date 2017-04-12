# pm-poise-python Cookbook

The pm-poise-python is a wrapper cookbook that provides recipes to install python virutal environments. It is designed to be included in application cookbooks requiring specific python versions, packages, and environments.

## Scope

This cookbook is aimed at applications that use/leverage python virtual environments. It does not address updating, removing, or maintaining the system (OS) provided install of python.

## Requirements

- Chef 12.5 or higher
- Network accessible package repositories

## Platform Support

The following platforms have been tested with Test Kitchen:

```
|----------------+-----+-----+-----+
|                | 0.1 | 1.0 | 1.1 |
|----------------+-----+-----+-----+
| ubuntu-14.04   | X   | X   |     |
|----------------+-----+-----+-----+
| ubuntu-16.04   | X   | X   |     |
|----------------+-----+-----+-----+
```

## Cookbook Dependencies

-[poise-python](https://supermarket.chef.io/cookbooks/poise-python)

## Usage

Place a dependency on the pm-poise-python cookbook in your cookbook's metadata.rb (and Berksfile if leveraging berks)

```ruby
depends 'pm-poise-python', '~> 1.0.0', git: 'https://github.com/rlafferty/pm-poise-python.git'
```

Then, in a recipe:

```ruby
include_recipe 'pm-poise-python'
```

## Attributes

### General

- `['pm-poise-python']['python']['runtime-name']` - the name of the python virtualenv runtime.
- `['pm-poise-python']['python']['version']` - what version of python to install in the virtualenv
- `['pm-poise-python']['python']['virtualenv-location']` - filesystem location of where the virtaulenv should be created

## Recipe Overview

### pm-poise-python::default

This recipe will create a python virtualenv runtime environment using the version and location attributes.

All python/virtualenv executables will be contained under the directory specified in `['pm-poise-python']['python']['virtualenv-location']`.


## Frequently Asked Questions


## License

```text
Copyright:: 2009-2017 Chef Software, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
