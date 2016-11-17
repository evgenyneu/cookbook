# Cookbook

This is a demo recipe web site made in Rails.

<a href='https://evgenii-cookbook.herokuapp.com/'><img src='https://github.com/evgenyneu/cookbook/raw/master/app/assets/images/cookbook_logo.png' width='122' title='Rails cookbook'></a>

[View demo](https://evgenii-cookbook.herokuapp.com/)

## Setup development environment

```
brew install postgresql
git clone https://github.com/evgenyneu/cookbook.git
cd cookbook
bundle
rails db:create
rails db:migrate
rails server
```

## Run tests

```
rails test
```

